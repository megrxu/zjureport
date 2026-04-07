%%
%% This is file `zjureport.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% zjureport.dtx  (with options: `class')
%% This is a generated file.
%% Copyright (C) 2026 by Your Name
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zjureport}[2026/04/07 v2.1 ZJU Lab Report Template]

\newif\ifzju@codeformat
\zju@codeformatfalse
\DeclareOption{codeformat}{\zju@codeformattrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[fontset=fandol]{ctexart}

\RequirePackage{graphicx, xcolor, tikz}
\RequirePackage{geometry, titlesec, fancyhdr}
\RequirePackage{indentfirst, enumitem, zhnumber}

\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}

\setcounter{secnumdepth}{3}
\renewcommand\thesection{\zhnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=\alph*.}
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize}
\titleformat*{\subsubsection}{\normalsize}

\ifzju@codeformat
  \RequirePackage{listings, cncolours}
  \colorlet{keyword}{松花绿}
  \colorlet{comment}{漆黑!50}
  \colorlet{emph1}{靛蓝}
  \colorlet{emph2}{琥珀}
  \lstset{
    frame=tb, framerule=0.5pt, numbers=none,
    breaklines=true, breakatwhitespace=true,
    keywordstyle = \bfseries\color{keyword},
    commentstyle = \itshape\color{comment},
    emphstyle    = [1]\itshape\color{emph1},
    emphstyle    = [2]\color{emph2},
    basicstyle   = {\small\ttfamily},
  }
\fi

\newcommand{\@major}{}
\newcommand{\@name}{}
\newcommand{\@stuid}{}
\newcommand{\@college}{}
\newcommand{\@lab}{}
\newcommand{\@course}{}
\newcommand{\@instructor}{}
\newcommand{\@grades}{}
\newcommand{\@expname}{}
\newcommand{\@exptype}{}
\newcommand{\@partner}{}

\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}

\newcommand{\@zjulogo}[1]{%
  \IfFileExists{figures/浙江大学.pdf}{%
    \includegraphics[width=#1]{figures/浙江大学.pdf}%
  }{%
    \textcolor{black!15}{\rule{#1}{1.2cm}}% 根据传入的宽度渲染占位符
  }%
}
\newcommand{\zjulogo}[1]{%
  \renewcommand{\@zjulogo}[1]{\includegraphics[width=##1]{#1}}%
}
\pagestyle{fancy}
\lhead{实验名称：\@expname}
\chead{姓名：\@name}
\rhead{学号：\@stuid}

\def\zjuu[#1]#2{\underline{\hbox to #1{\hfil#2\hfil}}}

\newcommand{\makeheader}{
\begin{figure}[h]
  \begin{minipage}{0.4\linewidth}
    \centerline{\@zjulogo{\linewidth}}
  \end{minipage}%
  \begin{minipage}{0.3\linewidth}
    \centerline{\fontsize{36}{50}\selectfont\kaishu\addCJKfontfeatures{FakeBold=2.5} 实验报告}
  \end{minipage}%
  \begin{minipage}{0.3\linewidth}
    \raggedleft
    \begin{tabular*}{.8\linewidth}{ll}
      专业： & \zjuu[70pt]\@major \\
      姓名： & \zjuu[70pt]\@name  \\
      学号： & \zjuu[70pt]\@stuid \\
      日期： & \zjuu[70pt]\@date \\
      地点： & \zjuu[70pt]\@lab
    \end{tabular*}
  \end{minipage}
\end{figure}

\begin{table}[!htbp]
  \centering
  \begin{tabular*}{\linewidth}{llllll}
    课程名称： & \zjuu[150pt]\@course  &
    指导老师： & \zjuu[50pt]\@instructor &
    成绩：     & \zjuu[50pt]\@grades \\
    实验名称： & \zjuu[150pt]\@expname &
    实验类型： & \zjuu[50pt]\@exptype    &
    同组姓名： & \zjuu[50pt]\@partner
  \end{tabular*}
\end{table}
\thispagestyle{empty}
}

\newcommand{\makecover}{
  \begin{center}
    \begin{center}
      \@zjulogo{0.7\linewidth}
    \end{center}
    \vspace{1cm}
    \huge{\textbf{本科实验报告}}\\
    \vspace{0.5cm}
    \Large{\textbf{\@expname}}
    \vspace{3cm}
    \begin{center}
      \Large\linespread{2}\centering
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{p{3cm}p{6cm}}
        \textbf{课程名称：} & \@course \\ \cline{2-2}
        \textbf{姓名：}     & \@name   \\ \cline{2-2}
        \textbf{学院：}     & \@college \\ \cline{2-2}
        \textbf{专业：}     & \@major  \\ \cline{2-2}
        \textbf{学号：}     & \@stuid  \\ \cline{2-2}
        \textbf{指导老师：} & \@instructor  \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vfill
    \Large{\@date}
  \end{center}
  \thispagestyle{empty}\newpage
}
\endinput
%%
%% End of file `zjureport.cls'.
