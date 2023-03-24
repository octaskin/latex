% Intro Options
\ProvidesClass{resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = ../util/fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = ../util/fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
		\color{date}\fontspec[Path = ../util/fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont
		Last Updated on \today
	\end{textblock}}

% Name command
\newcommand{\namesection}[4]{
	% \centering{

	\begin{minipage}[b]{0.49\textwidth}
		\vspace{15pt}
		\hspace{5pt}
		\fontsize{40pt}{60pt}
		\fontspec[Path = ../util/fonts/raleway/]{Raleway-ExtraLight}\selectfont #1
		\fontspec[Path = ../util/fonts/raleway/]{Raleway-Light}\selectfont #2
	\end{minipage}
	% } \\[5pt]
	% \centering{
	\begin{minipage}[b]{0.435\textwidth}
		\color{headings}
		\hspace{\fill}\fontspec[Path = ../util/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3 \\
		\hspace*{\fill}\fontspec[Path = ../util/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #4
	\end{minipage}
	\vspace{10pt}

	\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
	\vspace{-25pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
	\scshape\fontspec[Path = ../util/fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
	\color{subheadings}\fontspec[Path = ../util/fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
	\color{subheadings}\fontspec[Path = ../util/fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
	\color{subheadings}\raggedright\scshape\fontspec[Path = ../util/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
	\color{headings}\raggedright\fontspec[Path = ../util/fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
	\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
		{\end{itemize}\vspace{-\topsep}}
