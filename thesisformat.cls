%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Doctoral Thesis Template @ The University of Manchester
% Class File
% Version 1 (24/08/2018)
% Kathryn Fowler
%
% This template is based on:
% The University of Manchester, Presentation of Thesis Policy
% Research Office Graduate Education Team
% June 2017
% http://www.regulations.manchester.ac.uk/pgr-presentation-theses/
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% HELP:: http://tutex.tug.org/pracjourn/2005-4/hefferon/hefferon.pdf

% Setting up file
%--------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\newcommand{\classname}{thesisformat}
\ProvidesClass{\classname}[2018/08/24 version 1.00 University of Manchester Thesis Template]
\providecommand{\baseclass}{book}

\RequirePackage{etoolbox}
\RequirePackage{xparse}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}

\ProcessOptions\relax

\LoadClass{\baseclass}


% Required Packages
%--------------------------------------------------------
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage[sectionbib,round]{natbib}
\RequirePackage{chapterbib}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[pdftex]{hyperref}
\RequirePackage{xcolor}
\RequirePackage{enumerate}


% PDF Settings
%--------------------------------------------------------
\hypersetup{
	pdfauthor={Kathryn Fowler},
    pdftitle={Thesis Title},
    pdfsubject={A thesis submitted to the The University of Manchester for the degree of Doctor of Philosophy in the faculty of Science and Engineering},
    pdfkeywords={Some Keywords}
    }
            
            
% Formatting Links
%--------------------------------------------------------
\hypersetup{
	colorlinks=true,       % false: boxed links; true: colored links
    linkcolor=violet,          % color of internal links (change box color with linkbordercolor)
    citecolor=gray,        % color of links to bibliography
    filecolor=yellow,      % color of file links
    urlcolor=gray           % color of external links
    }


% Page Layout
%--------------------------------------------------------
\geometry{
	paper=a4paper, % Change to letterpaper for US letter
	inner=40mm, % Inner margin
	outer=15mm, % Outer margin
	%bindingoffset=.5cm, % Binding offset
	top=15mm, % Top margin % 15mm
	bottom=18mm, % Bottom margin % 15mm
	%showframe, % Uncomment to show how the type block is set on the page
}
\renewcommand{\baselinestretch}{1.5}
\pagestyle{plain}
\tolerance=1
\hyphenpenalty=10000
\hbadness=10000
\sloppy


% Title Page
%--------------------------------------------------------
\renewcommand{\maketitle}{%
\begin{titlepage}
\centering
\null\vfill
{\Huge\bfseries\thesistitle}
\vfill
{A thesis submitted to The University of Manchester for the degree of Doctor of Philosophy in the \faculty.}
\vfill
{\large\bfseries\the\year}
\vfill
{\large\bfseries\name}
\par\bigskip
{\large\bfseries\school}
\vfill
\end{titlepage}%
}


% Contents Page
%--------------------------------------------------------
\setcounter{tocdepth}{1}       % Put subsubsections in the table of contents
\setcounter{secnumdepth}{1}    % Number subsubsections in the chapters


% Word Count
%--------------------------------------------------------
\newcommand{\quickwordcount}[1]{%
  \immediate\write18{texcount -1 -sum -merge #1.tex > #1-words.sum }%
  Word Count: \input{#1-words.sum}%
}


% Chapter Headings
%--------------------------------------------------------
\titleformat{\chapter}[display]
{\normalfont\LARGE\bfseries\centering}{\centering\ \thechapter}{20pt}{\Huge}
\titlespacing*{\chapter}
{0pt}{40pt}{70pt}


% Bibliography settings
%--------------------------------------------------------
\renewcommand{\bibname}{References}

