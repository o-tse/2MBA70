%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% lecturenotes.cls - LaTeX2e class for creating lecture notes.
%% To Make  Nice Lecture Notes for Math Courses
%%	Version 1.01
%%  written by Alberto Chiarini and Pim van der Hoorn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecturenotes}[7/10/2024 custom lecture notes class]
\LoadClass[twoside=false]{scrbook}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm,bbm,enumerate,wrapfig}
\RequirePackage{hyperref,cleveref}
\RequirePackage{tikzsymbols}

% Reset mathcal back to previous style (not curly)
\DeclareMathAlphabet{\mathcal}{OMS}{cmsy}{m}{n}

% These are the colors used by TU/e as described in the TU/e Visual Identity document

\definecolor{tue_red}{RGB}{200,25,25}
\definecolor{tue_dark_blue}{RGB}{16,16,115}
\definecolor{tue_blue}{RGB}{0,102,204}
\definecolor{tue_cyan}{RGB}{0,162,222}
\definecolor{tue_green}{RGB}{132,210,0}
\definecolor{tue_yellow}{RGB}{206,233,0}


\definecolor{definition}{RGB}{0,0,0}
\definecolor{theorem}{RGB}{214,0,74}
\definecolor{lemma}{RGB}{16,16,115}

\newcommand\myshade{90}
\colorlet{mylinkcolor}{NavyBlue}
\colorlet{mycitecolor}{Aquamarine}
\colorlet{myurlcolor}{Aquamarine}

\hypersetup{
  linkcolor  = mylinkcolor!\myshade!black,
  citecolor  = mycitecolor!\myshade!black,
  urlcolor   = myurlcolor!\myshade!black,
  colorlinks = true,
}

%--------------------------------------------------------------------
% Bibliography
\RequirePackage[]{natbib}
\bibliographystyle{chicago}

% Proof

\renewcommand{\qedsymbol}{\Laughey[1.4]}

%--------------------------------------------------------------------
% Theorem
%=================================
% pre-defined theorem environments
% custom theorem boxes
\RequirePackage{tikz}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{amsthm}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}{Proposition}
\newtheorem{corollary}{Corollary}[chapter]
\newtheorem*{assumption}{Assumption}
\theoremstyle{remark}
\newtheorem*{remark}{Remark}
\newtheorem{example}{Example}[chapter]
\theoremstyle{definition}
\newtheorem{definition}{Definition}[chapter]
\newtheorem{problem}{Problem}[chapter]
\theoremstyle{plain}


% Set counter for boxed theorem environments
\newcounter{theo}[chapter] \setcounter{theo}{0}
\renewcommand{\thetheo}{\arabic{chapter}.\arabic{section}.\arabic{theo}}

%Theorem
\renewenvironment{theorem}[1][]{%
\refstepcounter{theo}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=tue_dark_blue]
{\strut {\color{white}Theorem~\thetheo}};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=tue_dark_blue]
{\strut {\color{white}Theorem~\thetheo:~#1}};}}%
}%
\mdfsetup{innertopmargin=10pt, innerbottommargin=10pt,linecolor=tue_dark_blue,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
}{\end{mdframed}}

%Definition

\renewenvironment{definition}[1][]{%
\refstepcounter{theo}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=tue_red]
{\strut {\color{white}Definition~\thetheo}};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=tue_red]
{\strut {\color{white}Definition~\thetheo:~#1}};}}%
}%
\mdfsetup{innertopmargin=10pt, innerbottommargin=10pt,linecolor=tue_red,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
}{\end{mdframed}}

%Lemma

\renewenvironment{lemma}[1][]{%
\refstepcounter{theo}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=tue_blue]
{\strut {\color{white} Lemma~\thetheo}};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=tue_blue]
{\strut {\color{white}Lemma~\thetheo:~#1}};}}%
}%
\mdfsetup{innertopmargin=10pt, innerbottommargin=10pt, linecolor=tue_blue,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
}{\end{mdframed}}

%Proposition

\renewenvironment{proposition}[1][]{%
\refstepcounter{theo}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=tue_blue]
{\strut {\color{white} Proposition~\thetheo}};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=tue_blue]
{\strut {\color{white}Proposition~\thetheo:~#1}};}}%
}%
\mdfsetup{innertopmargin=10pt, innerbottommargin=10pt, linecolor=tue_blue,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
}{\end{mdframed}}

%=================================
% itemize

\renewcommand\labelitemi{$\blacktriangleright$}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Typography, change document font

\RequirePackage{libertine}
\RequirePackage[cal=rsfso, scr=boondoxo, bb=ams]{mathalfa}
\RequirePackage[T1]{fontenc}

\RequirePackage[protrusion=true,expansion=true]{microtype}

%=================================
% header and footer
\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}
\deftriplepagestyle{pagestyle}
%   [0.5pt]
%   [0.3pt]
  {}
  {}
  {\headmark}
  {}
  {\pagemark}
  {}

\pagestyle{pagestyle}
\renewcommand{\chapterpagestyle}{pagestyle}


%=================================
% draw pictures
\RequirePackage{tikz}
\usetikzlibrary{arrows,positioning,calc} 
\tikzstyle{labeled}=[execute at begin node=$\scriptstyle,
   execute at end node=$]
\RequirePackage{graphicx}

%=================================
% title page
% define university 
\def\@university{no university}
\newcommand{\university}[1]{
  \def\@university{#1}
}
% define course id
\def\@courseid{CS 000}
\newcommand{\courseid}[1]{
  \def\@courseid{#1}
}
% define version
\def\@version{Great Year}
\newcommand{\version}[1]{
  \def\@version{#1}
}
% define instructor info
\def\@instructor{Instructor}
\newcommand{\instructor}[1]{
  \def\@instructor{#1}
}
% make title
\renewcommand{\maketitle}{
    \centering
    {\scshape{\Large  \@university, \@courseid} \par}
    \vspace{1.5cm}
    {\huge\bfseries{\@title} \par}
    \vspace{2cm}
    \includegraphics[scale=1.2]{figures/TUe_logo.png}
    \vfill
    % Bottom of the page
    {\Large\itshape \@author \par}
    {\large \@version \par}
}

%=================================
% add current instructor info 
% on the right
\newcommand{\curinstructor}[1]{
    % instructor info
    \vfill
    \begin{flushright}
    Instructor: #1
    \end{flushright}
}

%=================================
% quote environment

\makeatletter
\newenvironment{chapquote}[2][2em]
  {\setlength{\@tempdima}{#1}%
   \def\chapquote@author{#2}%
   \parshape 1 \@tempdima \dimexpr\textwidth-2\@tempdima\relax%
   \itshape}
  {\par\normalfont\hfill--\ \chapquote@author\hspace*{\@tempdima}\par\bigskip}
\makeatother