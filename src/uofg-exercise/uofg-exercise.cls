% Author: Liam McManus
% Description: General Template for submissions.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uofg-exercise}[UofG Exercise Template]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Load class
\LoadClass[11pt,a4paper]{article}

% Graphics
\usepackage{ifpdf}
\ifpdf
  \usepackage[pdftex]{graphicx}
\else
  \usepackage{graphicx}
\fi

% Formatting
\setlength{\itemsep}{0pt}
\setlength{\parskip}{0pt}
\setlength{\topsep}{0pt}
\tracingpages=1
\tracingoutput=1
\showboxbreadth=50
\showboxdepth=50
\raggedright
\setlength{\belowcaptionskip}{5pt}
\setlength{\parindent}{0pt}
\setlength{\parskip}{7pt plus 1pt}
\addtolength\textwidth{1.0in}
\addtolength\oddsidemargin{-0.50in}
\addtolength\textheight{1.0in}
\addtolength\topmargin{-0.5in}

% Minted
\newlength{\mintednumbersep}
\AtBeginDocument{%
  \sbox0{\tiny00}%
  \setlength\mintednumbersep{\parindent}%
  \addtolength\mintednumbersep{-\wd0}%
}

\usepackage{minted}
\AtBeginDocument{
  \usemintedstyle{vs}
  \setminted{numbersep=\mintednumbersep}
  \setminted{fontsize=\small}
  \setminted{ignorelexererrors=true}
}

% Bib
\usepackage{natbib}

% Hyperref
\usepackage [colorlinks=true]{hyperref}

% Course
\newcommand{\course}[1]{\gdef\@course{#1}}
\newcommand{\@course}{}

% Executive Summary
\renewenvironment{abstract}{
  \vskip 1em
  {\bfseries\abstractname}\par
}{\vfill}
\renewcommand\abstractname{\raggedright Overview}
\newenvironment{Overview}{\begin{abstract}}{\end{abstract}}

% Title
\makeatletter
\renewcommand\maketitle{%
  \noindent
  \includegraphics[width=0.65\textwidth]{images/comp-sci-mono}\par
  \vskip 1.2em

  {\Large \@course \par}
  {\LARGE \bfseries \@title \par}
  \vskip 0.5em
  {\large \@author \par}
  \vskip 0.5em
  \@date

  \vskip 2em
}
\makeatother

\endinput
