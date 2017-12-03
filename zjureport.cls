\ProvidesClass{zjureport}
\LoadClass{article}
\RequirePackage{ctex}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{array}

\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{2}
\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\newlist{clause}{enumerate}{1}
\setlist[clause]{fullwidth,itemindent=2em,label=(\arabic*)}
\newCJKfontfamily[song]\song{SimSun}
%[AutoFakeBold]
% 这句估计15不支持这样的语法

% \setmainfont{CMU Serif}
\setmonofont{Lucida Console}
\setsansfont{SimHei}
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{2em}{*4}{*1.5}

% 代码格式和颜色定义

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}

\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}

\newcommand\dmajor[1]{\def\major{#1}}
\newcommand\dname[1]{\def\name{#1}}

% 页眉
\pagestyle{fancy}
\lhead{实验名称：\newtitle}
\chead{姓名：\name}
\rhead{学号：\stuid}

% 下划线的一个定义
\def\ZJUunderline[#1]#2{%
  \underline{\hbox to #1{\hfil#2\hfil}}}

% 首页头部
\newcommand{\makeheader}{
\begin{figure}[h]
  \begin{minipage}{0.7\linewidth}
    \centerline{\includegraphics[width=\linewidth]{head.jpg}}
  \end{minipage}
  \hfill
  \begin{minipage}{.3\linewidth}
    \raggedleft
    \begin{tabular*}{.8\linewidth}{ll}
      专业： & \ZJUunderline[70pt]\major   \\
      姓名： & \ZJUunderline[70pt]\name    \\
      学号： & \ZJUunderline[70pt]\stuid   \\
      日期： & \ZJUunderline[70pt]\newdate \\
      地点： & \ZJUunderline[70pt]\loc
    \end{tabular*}
  \end{minipage}
\end{figure}

\begin{table}[!htbp]
  \centering
  \begin{tabular*}{\linewidth}{llllll}
    课程名称： & \ZJUunderline[150pt]\course   & 指导老师： & \ZJUunderline[50pt]\tutor   & 成绩：       &  \ZJUunderline[50pt]\grades \\
    实验名称： & \ZJUunderline[150pt]\newtitle & 实验类型： &\ZJUunderline[50pt]\exptype & 同组学生姓名：& \ZJUunderline[50pt]\group
  \end{tabular*}
\end{table}
\thispagestyle{empty}

}

% 封面
\newcommand{\makecover}{
  \begin{center}
    \begin{center}
      \includegraphics[width=0.8\linewidth]{cover.png}
    \end{center}
    \vspace{1cm}
    \bfseries\huge{本科实验报告}\\
    \vspace{0.5cm}
    \bfseries\Large{\newtitle}
    \vspace{3cm}
    \begin{center}
      \Large
      \linespread{2}
      \centering
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{p{3cm}p{6cm}}
        \bfseries{课程名称：} & \course \\ \cline{2-2}
        \bfseries{姓名：}     & \name   \\ \cline{2-2}
        \bfseries{学院：}     & \college \\ \cline{2-2}
        \bfseries{专业：}     & \major  \\ \cline{2-2}
        \bfseries{学号：}     & \stuid  \\ \cline{2-2}
        \bfseries{指导老师：} & \tutor  \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vspace{2cm}
    \Large{\newdate}
  \end{center}
  \thispagestyle{empty}
  \newpage
}
