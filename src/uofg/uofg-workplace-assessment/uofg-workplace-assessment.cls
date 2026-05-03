% Author: Liam McManus
% Original Author: University of Glasgow
% Description: Template for year 3s Workplace Reports.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uofg-workplace-assessment}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

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
\setlength{\belowcaptionskip}{5pt}
\setlength{\parindent}{0pt}
\setlength{\parskip}{7pt plus 1pt}
\addtolength\textwidth{1.0in}
\addtolength\oddsidemargin{-0.50in}
\addtolength\textheight{1.0in}
\addtolength\topmargin{-0.5in}
\setlength{\intextsep}{15pt}

% Minted
\newlength{\mintednumbersep}
\AtBeginDocument{%
  \sbox0{\tiny00}%
  \setlength\mintednumbersep{\parindent}%
  \addtolength\mintednumbersep{-\wd0}%
}

\usepackage{minted}
\AtBeginDocument{%
  \usemintedstyle{vs}
  \setminted{numbersep=\mintednumbersep}
  \setminted{fontsize=\footnotesize}
  \setminted{ignorelexererrors=true}
}

% Bib
\usepackage{natbib}

% Hyperref
\usepackage [colorlinks=true]{hyperref}

% Listing
\providecommand*{\listingautorefname}{Listing}

% Abstract
\renewenvironment{abstract}{
  \vskip 1em
  {\bfseries\abstractname}\par
}{\vfill}

% Executive Summary
\renewcommand\abstractname{\raggedright Executive Summary}
\newenvironment{ExecutiveSummary}{\begin{abstract}}{\end{abstract}}

% Opening Page
\renewcommand\maketitle{%
  \thispagestyle{empty}
  \let\footnotesize\small
  \let\footnoterule\relax
  \let\footnote \thanks
  \includegraphics{images/comp-sci-mono}
  \vskip 2em%
  {\Large Workplace Assessment Year 3 - Project Report \par}
  {\large Semester: n \par}
  {\large Project n of n \par}
  {\large Marks: 45 \par}

  {\LARGE \textbf \@title \par}%
  \vskip 1em%
  \large
  \begin{tabular}[t]{@{}l}%
    \@author
  \end{tabular}\par%
  \large
  \vskip 1em%
  \@date

  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

% Educational Consent
\newcommand{\educationalconsent}{
  {\bfseries Education Use Consent}\par
  I hereby give our permission for this project to be shown to other
  University of Glasgow students and to be distributed in an electronic
  format.
}

\newcommand{\noeducationalconsent}{
  {\bfseries Education Use Consent}\par
  Consent for educational reuse withheld. Do not distribute.
}
