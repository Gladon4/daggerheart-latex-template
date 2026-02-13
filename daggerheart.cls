\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{daggerheart}[2026/02/11 Custom document class]

% --------------------
% Base class
% --------------------
\LoadClass[11pt,a4paper, twoside]{article}

% --------------------
% Required packages
% --------------------
\RequirePackage[a4paper,margin=1.6cm,includefoot]{geometry}
\RequirePackage{setspace}
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{tabularx}        
\RequirePackage{multicol}
\RequirePackage{fontspec}
\RequirePackage{framed}
\RequirePackage[table]{xcolor}
\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage[most]{tcolorbox}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{parskip}
\RequirePackage{enumitem}
\RequirePackage{quoting}
\RequirePackage[colorlinks=true, linkcolor=darkgray]{hyperref}
\RequirePackage{needspace}
\RequirePackage{textcase}
\RequirePackage{graphicx}
\RequirePackage{tabulary}
\RequirePackage{array}
\RequirePackage{cuted} 
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{tcolorbox}
\RequirePackage{etoolbox}
\RequirePackage{tikzpagenodes}

% --------------------
% Page style
% --------------------
\pagestyle{fancy}
\fancyhf{}


\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{2pt}
\renewcommand{\footrule}{\hbox to \headwidth{\color{gold}\leaders\hrule height \footrulewidth\hfill}}

\fancyfoot[LE]{
	\makebox[0pt][l]{
		\hspace{0.25cm}
		\colorbox{gold}{
			\textbf{\quad\thepage\quad}
		}\textbf{
			\leftmark \ \  \rightmark
		}
	}
}

\fancyfoot[RO]{
	\fontsize{5pt}{12pt}\selectfont{
	\makebox[0pt][r]{
		\footnotesize
		\textbf{
			\leftmark \ \  \rightmark \
		}\colorbox{gold}{
			\textbf{\quad\thepage\quad}
		}
		
	}}
}

\onehalfspacing


\setlength{\columnsep}{1.5em}

% --- Fonts ---
\renewcommand{\normalsize}{\fontsize{8.5}{10}\selectfont}
\normalsize
\renewcommand{\baselinestretch}{1.2}
\setmainfont{Montserrat-Regular.ttf}[
Path = ./fonts/,
ItalicFont = Merriweather-Italic.ttf,
BoldFont = Montserrat-SemiBold.ttf,
BoldItalicFont = Merriweather-BoldItalic.ttf
]
\newfontfamily\montserratThin{Montserrat-Thin.ttf}[
Path = ./fonts/,
]
\newfontfamily\montserratLight{Montserrat-Light.ttf}[
Path = ./fonts/,
]
% Try to load Eveleth-Regular.ttf, if fails load League-Spartan.ttf
\IfFontExistsTF{./fonts/Eveleth-Regular.ttf}{
	\newfontfamily\eveleth{Eveleth-Regular.ttf}[Path=./fonts/]
}{
	\newfontfamily\eveleth{LeagueSpartan-Extrabold.ttf}[Path=./fonts/]
}

% --- Colors ---
\definecolor{maintext}{HTML}{000000}
\definecolor{h1text}{HTML}{444444}
\definecolor{h2text}{HTML}{3a6b7b}
\definecolor{h3text}{HTML}{927421}
\definecolor{h4text}{HTML}{3a6b7b}
\definecolor{h4square}{HTML}{deb334}
\definecolor{tableheaderbg}{HTML}{3a6b7b}
\definecolor{tablerow}{HTML}{ebf0f1}
\definecolor{white}{HTML}{ffffff}
\definecolor{squareboxbg}{HTML}{f1ebf4}
\definecolor{squareboxborder}{HTML}{4d2d63}
\definecolor{roundedboxbg}{HTML}{dde2ed}
\definecolor{quoteborder}{HTML}{deb334}
\definecolor{adversarybordercolor}{HTML}{bcab84}
\definecolor{adversarybgcolor}{HTML}{f4f0e5}
\definecolor{environmentbordercolor}{HTML}{a3a3a3}
\definecolor{environmentbgcolor}{HTML}{ededed}

% Daggerheart colours
\definecolor{gold}{HTML}{e4bd6b}

\definecolor{dg-red}{HTML}{7a1e1f}
\definecolor{dg-darkgreen}{HTML}{56673d}
\definecolor{dg-orange}{HTML}{ae5825}
\definecolor{dg-purple}{HTML}{754084}

\color{maintext}

% --- Columns ---
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.5em}


\newcommand{\setboxcolor}[1]{
	\colorlet{squareboxbg}{#1}
}
\newcommand{\resetboxcolor}{
	\definecolor{squareboxbg}{HTML}{f1ebf4}
}

% --- Custom square box ---
\newtcolorbox{squarebox}{
	colback=squareboxbg,
	enhanced,
	frame hidden,
	borderline north={.75pt}{0pt}{squareboxborder},
	borderline south={.75pt}{0pt}{squareboxborder},
	left=.75em,
	right=.75em,
	top=.75em,
	bottom=.75em,
	before skip=2em,
	after skip=2em,
	sharp corners,
}

% --- Custom rounded box ---
\newtcolorbox{roundedbox}{
	colback=gray!7,
	enhanced,
	frame hidden,
	arc=6pt,
	left=.75em,
	right=.75em,
	top=.75em,
	bottom=.75em,
	before skip=2em,
	after skip=2em,
}

% --- Blockquote ---
\newtcolorbox{quotebox}{
	colback=white,
	enhanced,
	frame hidden,
	borderline west={2pt}{0pt}{quoteborder},
	left=1em,
	right=0em,
	top=0.2em,
	bottom=0.2em,
	before skip=1em,
	after skip=1em,
	sharp corners,
}
\renewenvironment{quote}
{\begin{quotebox}}
	{\end{quotebox}}

% --- Titles ---
\setcounter{secnumdepth}{0}

\newcommand{\setsectioncolor}[2]{%
	\titleformat{\section}
	{\montserratLight\fontsize{24pt}{0pt}\selectfont\color{#1}\MakeTextUppercase}
	{\thesection}
	{1em}
	{}
	\titleformat{\subsection}
	{\eveleth\fontsize{20pt}{0pt}\selectfont\color{#2}\MakeTextUppercase}
	{\thesubsection}
	{1em}
	{}
}

\newcommand{\setsubsubsectioncolor}[1]{%
	\titleformat{\subsubsection}
	{\bf\fontsize{15pt}{0pt}\selectfont\color{#1}\MakeTextUppercase}
	{\thesubsubsection}
	{1em}
	{}
}


\newcommand{\resetsectioncolor}{\setsectioncolor{h1text}{h2text} \setsubsubsectioncolor{h3text}}
\resetsectioncolor


\newcommand{\hfour}[1]{%
	\needspace{4\baselineskip}%
	\vspace*{3pt}%
	{\fontsize{10pt}{11pt}\selectfont\bfseries
		\raisebox{-0.1ex}{\textcolor{h4square}{\rule{1.5ex}{1.5ex}}}\hspace{0.45em}%
		\color{h4text} #1%
		\par}%
	\nopagebreak[4]%
	\vspace{3pt}%
}

\let\oldsection\section
\renewcommand{\section}[1]{%
%\end{multicols*}
\vspace{1em}
\oldsection{#1}
\vspace{1em}
%\begin{multicols*}{2}
	\raggedcolumns
}

% --- Lists ---
\providecommand{\tightlist}{%
	\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}%
}
\setlength{\leftmargini}{1em}
\setlength{\leftmarginii}{1em}

% --- Frontpage ---
\newcommand{\frontpage}[3]{%	
	\begin{titlepage}
		\vspace*{\fill}
		\begin{center}
			{\eveleth\fontsize{36pt}{36pt}\selectfont\MakeTextUppercase{#1}}\\[1em]
			{\large\MakeUppercase{#2}}\\[2em]
			{\normalsize #3}
		\end{center}
		\vspace*{\fill}
		\thispagestyle{empty}
	\end{titlepage}
}


\newcommand{\@subtitle}{}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}

\renewcommand{\maketitle}{
	\frontpage{\@title}{\@subtitle}{\@author}
}

% --- Table of contents ---
\makeatletter
\renewcommand{\tableofcontents}{%
	{\montserratThin\fontsize{24pt}{28pt}\selectfont\MakeTextUppercase{\contentsname}}%
	\@starttoc{toc}%
}
\makeatother

\tcbuselibrary{skins}

% --- Main Box ---
\newtcolorbox{adversarybox}[1]{
	enhanced,
	colback=adversarybgcolor,
	colframe=adversarybordercolor,
	arc=5pt,
	boxrule=1pt,
	outer arc=5pt,
	before skip=2em,
	after skip=2em,
	top=8pt,
	left=8pt,
	right=8pt,
	bottom=8pt,
	before upper={\parskip=4pt},
}

% --- Inner box ---
\newtcolorbox{adversaryinnerbox}{
	colback=white,
	enhanced,
	frame hidden,
	borderline north={1pt}{0pt}{adversarybordercolor},
	borderline south={1pt}{0pt}{adversarybordercolor},
	left=0.5em,
	right=0.5em,
	top=0.5em,
	bottom=0.5em,
	before skip=1em,
	after skip=1em,
	sharp corners,
}

\newcommand{\myseparator}{\par\noindent\rule{\linewidth}{1pt}\par}



\newcommand{\adversarystats}[8]{
	\ifstrempty{#1}{}{\textbf{Difficulty:} #1 |}
	\ifstrempty{#2}{}{\textbf{Thresholds:} #2 |}
	\ifstrempty{#3}{}{\textbf{HP:} #3 |}
	\ifstrempty{#4}{}{\textbf{Stress:} #4}
	\ifstrempty{#5}{}{\\}
	\ifstrempty{#5}{}{\textbf{ATK:} #5 	|}
	\ifstrempty{#6}{}{\textbf{#6:} #7 | #8}
}


\newcommand{\adversary}[6]{%
	\begin{adversarybox}{}%
		{\color{maintext}%
			\eveleth\fontsize{14pt}{14pt}\selectfont\MakeTextUppercase{#1}
			\par\smallskip
			\normalfont\fontsize{8pt}{8pt}\selectfont
			
			\ifstrempty{#2}{}{
				\textbf{\emph{#2}}
				\par\smallskip
			}
			
			\ifstrempty{#3}{}{
				\emph{#3}
				\par\smallskip
			}
			
			\ifstrempty{#4}{}{
				\textbf{Motives \& Tactics:} #4
				\par\smallskip
			}
			
			\ifstrempty{#5}{}{
				\begin{adversaryinnerbox}
					#5
				\end{adversaryinnerbox}
			}
			\par\smallskip
			
			\ifstrempty{#6}{}{			
				\eveleth\fontsize{12pt}{10pt}\selectfont\MakeTextUppercase{Features}
				\normalfont\fontsize{8pt}{8pt}\selectfont
				
				#6
			}
		}%
	\end{adversarybox}%
}

% --- Main Box ---
\newtcolorbox{environmentbox}[1]{
	enhanced,
	colback=environmentbgcolor,
	colframe=environmentbordercolor,
	arc=5pt,
	boxrule=1pt,
	outer arc=5pt,
	before skip=2em,
	after skip=2em,
	top=8pt,
	left=8pt,
	right=8pt,
	bottom=8pt,
	before upper={\parskip=4pt},
}

% --- Inner box ---
\newtcolorbox{environmentinnerbox}{
	colback=white,
	enhanced,
	frame hidden,
	borderline north={1pt}{0pt}{environmentbordercolor},
	borderline south={1pt}{0pt}{environmentbordercolor},
	left=0.5em,
	right=0.5em,
	top=0.5em,
	bottom=0.5em,
	before skip=1em,
	after skip=1em,
	sharp corners,
}

\newcommand{\environmentstats}[2]{
	\ifstrempty{#1}{}{\textbf{Difficulty:} #1 \ifstrempty{#2}{}{\\}}
	\ifstrempty{#2}{}{\textbf{Potential Adversaries:} #2}
}

\newcommand{\environment}[6]{%
	\begin{environmentbox}{}%
		{\color{maintext}%
			\eveleth\fontsize{14pt}{14pt}\selectfont\MakeTextUppercase{#1}
			\par\smallskip
			\normalfont\fontsize{8pt}{8pt}\selectfont
			
			\ifstrempty{#2}{}{
				\textbf{\emph{#2}}
				\par\smallskip
			}
			\ifstrempty{#3}{}{
				\emph{#3}
				\par\smallskip
			}
			\ifstrempty{#4}{}{
				\textbf{Impulses:} #4
				\par\smallskip
			}
			\ifstrempty{#5}{}{
				\begin{environmentinnerbox}
					#5
				\end{environmentinnerbox}
			}
			\par\smallskip
			
			\ifstrempty{#6}{}{
			\eveleth\fontsize{12pt}{10pt}\selectfont\MakeTextUppercase{Features}
			\normalfont\fontsize{8pt}{8pt}\selectfont
			
			#6
			}
		}%
	\end{environmentbox}%
}


\newcommand{\fullpage}[1]{
	\end{multicols}
	#1
	\begin{multicols}{2}
}

\newcommand{\ColoredTable}[3]{%
	\renewcommand{\arraystretch}{1.5}
	
	\rowcolors{2}{#2!20}{white} 
	\begin{tabularx}{#1}{>{\raggedright\bfseries}p{1.5cm} X X X}
		\rowcolor{#2}
		#3
	\end{tabularx}
}

