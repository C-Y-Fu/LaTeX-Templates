\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ArticleCYF}[]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[[10.5pt,twocolumn,twoside,a4paper,UTF8]{ctexart}

\usepackage{fancyhdr}
\usepackage{amsmath,amsfonts,amssymb,graphicx}    % EPS 图片支持
\usepackage{subfigure}   % 使用子图形
\usepackage{indentfirst} % 中文段落首行缩进
\usepackage{bm}          % 公式中的粗体字符(用命令\boldsymbol）
\usepackage{indentfirst} % 中文首段缩进
\usepackage{abstract}    % 2栏文档，一栏摘要及关键字宏包
\usepackage{amsthm}      % 使用定理
\usepackage{booktabs}    % 使用表格
\usepackage{siunitx}
\usepackage{tikz}
%\usepackage[sort]{cite}
\usepackage{titlesec}
\usepackage{times}
\usepackage{wasysym}
\usepackage{pifont}
\usepackage{ccaption}
\usepackage{float}
\usepackage{calc}
\usetikzlibrary{calc}
\usepackage{environ}
\setmainfont{Times New Roman}
\setCJKfamilyfont{hwxingkai}{STXingkai}
\newcommand{\hwxingkai}{\CJKfamily{hwxingkai}}
\usepackage{xeCJK}
\setCJKfamilyfont{hei}{SimHei} %黑体
\setCJKfamilyfont{kai}{KaiTi} %楷体
\setCJKfamilyfont{fang}{FangSong} %仿宋
\newcommand{\hei}{\CJKfamily{hei}}
\newcommand{\kai}{\CJKfamily{kai}}
\newcommand{\fang}{\CJKfamily{fang}}
  
\newfontfamily\CalibriFont{Calibri} %字体族
\newfontfamily\TimesNMFont{Times New Roman} %Times字体族
  
\newcommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    % 字号设置
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   % 字号设置
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\myxiaoliuhao}{\fontsize{6.5pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    % 字号设置

\renewcommand{\tablename}{表}
\renewcommand{\figurename}{图}
\captiondelim{~~}
\captionnamefont{\xiaowuhao}
\captiontitlefont{\xiaowuhao}
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}
\usepackage{lettrine}
\setlength{\parindent}{2em}
\setlength{\voffset}{-4mm}
\setlength{\parskip}{1pt} 
\renewcommand{\baselinestretch}{1.11} %定义行间距1.15
\setcounter{page}{1} \makeatletter
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {1.5ex }%
                                   {1.5ex}%
                                   {\normalfont\bfseries\hei\sihao}}
\renewcommand\subsection{\@startsection {subsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\bfseries\hei\wuhao}}
\renewcommand\subsubsection{\@startsection {subsubsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\bfseries\kai\wuhao}}
 \renewcommand{\CJKglue}{\hskip -0.4pt plus 5.5\baselineskip}

\makeatletter  % see, e.g., p. 26 of "The LaTeX Companion"
  \def\@seccntformat#1{\@ifundefined{#1@cntformat}%
     {\csname the#1\endcsname\quad}%   default setting
     {\csname #1@cntformat\endcsname}% individual control
  }
  \def\section@cntformat{\normalfont{\thesection}\quad}
\makeatother
\makeatletter  % see, e.g., p. 26 of "The LaTeX Companion"
  \def\@subseccntformat#1{\@ifundefined{#1@cntformat}%
     {\csname the#1\endcsname\quad}%   default setting
     {\csname #1@cntformat\endcsname}% individual control
  }
  \def\subsection@cntformat{\normalfont{\thesubsection}\quad}
\makeatother
\makeatletter  % see, e.g., p. 26 of "The LaTeX Companion"
  \def\@subsubseccntformat#1{\@ifundefined{#1@cntformat}%
     {\csname the#1\endcsname\quad}%   default setting
     {\csname #1@cntformat\endcsname}% individual control
  }
  \def\subsubsection@cntformat{\normalfont{\thesubsubsection}\quad}
\makeatother
 
 \usepackage{geometry}
 \newgeometry{
    top=25.4mm, bottom=22.5mm, left=20mm, right=20mm,
    headsep=5mm, headheight=10mm, footskip=10mm,
}
\savegeometry{mastergeometry}
\loadgeometry{mastergeometry}

\setlength{\columnsep}{14mm}
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parskip}{1pt} \allowdisplaybreaks \makeatother
\newtheoremstyle{mystyle}{3pt}{3pt}{}{\parindent}{\bfseries}{}{5mm}{}
\theoremstyle{mystyle}
\newtheorem{Cor}{\normalsize{{\CJKfamily{hei}推论}}}
\newtheorem{Thm}{\normalsize{{\CJKfamily{hei}定理}}}
\newtheorem{Site}{\normalsize{{\CJKfamily{hei}引理}}}
\newtheorem{Def}{\normalsize{{\CJKfamily{hei}定义}}}
\newtheorem{Rem}{\normalsize{{\CJKfamily{hei}注}}}
\newtheorem{Exa}{\normalsize{{\CJKfamily{hei}例}}}
\newtheorem{Ste}{\normalsize{{\CJKfamily{hei}步骤}}}
\newtheorem{Sup}{\normalsize{{\CJKfamily{hei}假设}}}
\newtheoremstyle{citing}{3pt}{3pt}{}{}{\bfseries}{.}{.5em}{\thmnote{#3}}
\theoremstyle{citing}\newtheorem*{citedthm}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\diag}{{\rm diag}}
\newcommand{\rank}{{\rm rank}}
\newcommand{\tr}{{\rm tr}}
\newcommand{\sign}{{\rm sign}}
\newcommand{\sgn}{{\rm sgn}}
\newcommand{\Proj}{{\rm Proj}}
\makeatletter
\renewcommand{\proofname}{\normalsize{{\CJKfamily{hei}证}}}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep.1\p@\@plus.1\p@ \labelsep0em\relax
  \trivlist
  \item[\hskip 2.2em
        \bfseries
    #1]\hskip .5em\ignorespaces
}{%
  \endtrivlist\@endpefalse
} \makeatother


\newcommand{\positiontextbox}[4][]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node[inner sep=0pt,right,align=left, #1] at ($(current page.north west) + (#2,-#3)$) {#4};
  \end{tikzpicture}%
}


\NewEnviron{CAbstractJBUAA}{%
\vspace{-3em}
\begin{center}
\parbox{\textwidth}{
\wuhao\setlength{\parindent}{2em}
\newlength{\somelength}
\settowidth{\somelength}{关键词}

{\hei\wuhao \makebox[\widthof{关键词}][s]{摘 要}:} 
{\fang\wuhao 
\BODY
}

{\hei\wuhao \makebox[\widthof{关键词}][s]{关键词}:} \fang \jbuaaCKeyword
\vspace*{1.3cm}}
\end{center}
}

\def\jbuaaCLCNo{}
\newcommand{\CLCNo}[1]{%
    \def\jbuaaCLCNo{#1}
}

\def\jbuaaCKeyword{}
\newcommand{\CKeyword}[1]{%
    \def\jbuaaCKeyword{#1}
}

\def\jbuaaDcode{}
\newcommand{\Dcode}[1]{%
    \def\jbuaaDcode{#1}
}

\def\jbuaaPaperNo{}
\newcommand{\PaperNo}[1]{%
    \def\jbuaaPaperNo{#1}
}
\makeatletter
\def\@compress@cite#1{%  % This is executed for each number
  \advance\@tempcnta\@ne % Now \@tempcnta is one more than the previous number
  \ifnum #1=\@tempcnta   % Number follows previous--hold on to it
        \def\@h@ld{\citedash \citeform{#1}}%
  \else   %  non-successor -- dump what's held and do this one
     \@h@ld \@citea \citeform{#1}%
     \let\@h@ld\@empty
  \fi \@tempcnta#1\let\@citea\citepunct
} \makeatother
\newcommand{\citedash}{-}

\fancypagestyle{plain}{ \fancyhf{}\vspace{10pt}
\lhead{}
\chead{\vspace{0.8cm}\centering{{\CJKfamily{hei}\xiaowuhao 个\ 人\ 文\ 档}\\[-0.5ex]
{{\xiaowuhao Personal Documents}}}}
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{}
\renewcommand{\headrule}{%
\hrule height0.4pt width \headwidth \vskip1.0pt%
\hrule height0.4pt width \headwidth \vskip-2pt}}
\pagestyle{fancy} 
\fancyhf{}
\fancyhead[CE]{{\footnotesize 个人文档}}
\fancyhead[LE,RO]{~~~\footnotesize\thepage ~~~}
\lfoot{}
\cfoot{}
\rfoot{}

%%%%%%%%%%%
\DeclareMathSizes{10.5}{10}{6.8}{4.2}
\setlength{\abovedisplayskip}{2.5mm}
\setlength{\belowdisplayskip}{2.5mm}
\usepackage{tabu}
\usepackage{longtable}
\usepackage{makecell}
\renewcommand\cellgape{\Gape[-3pt][-3pt]}

%%%%%%%%%%%%%%%%origin

\fancyhead[CO]{{\footnotesize 个人文档}}


\renewcommand\refname{\hei\wuhao\centerline{参考文献}\global\def\refname{参考文献}}
\vskip 12pt

\let\OLDthebibliography\thebibliography
\renewcommand\thebibliography[1]{
  \OLDthebibliography{#1}
  \setlength{\parskip}{0pt}
  \setlength{\itemsep}{0pt plus 0.3ex}
}

\newcommand{\bnurefs}[1]{
{
\renewcommand{\baselinestretch}{0.9}
\liuhao
\bibliographystyle{unsrt}
\bibliography{#1}
}
}

\RequirePackage{hyperref}
\RequirePackage{amsmath}
\hypersetup{colorlinks=true}

\newcommand{\thedate}[1]{
\date{
\small
\vspace{-0.33cm}
#1}
}
%-------------------------------------------------------------------------------------
%	新命令
%-------------------------------------------------------------------------------------
\newcommand{\Title}[1]{%题目
\title{
\erhao\hei #1 \vspace{-0.2cm}
}
}

\newcommand{\Authors}[1]{
\author{
\sihao\fang #1 \makebox{$^{\text{1}}$}\\[0.1cm]
\liuhao (1.~~北京师范大学~~物理学系，北京~~100875) 
}
}

\newcommand{\KeywordandAbstract}[2]{%关键词和摘要
\CKeyword{#1}

\twocolumn[
  \begin{@twocolumnfalse}
  \maketitle
\vspace{0.04cm}
\begin{CAbstractJBUAA}
#2
\end{CAbstractJBUAA}
\end{@twocolumnfalse}
]
\wuhao 
}

\newcommand{\myfig}[4][width=200pt]{
\begin{figure}[!htbp]
\centering
\includegraphics[#1]{#2}
\caption{#3}
\label{#4}
\end{figure}}

\newcommand{\mywidefig}[3]{
\begin{figure*}[!htbp]
\centering
\includegraphics{#1}
\caption{#2}
\label{#3}
\end{figure*}}

\newcommand{\figref}[1]{\textbf{图\ref{#1}}}
\newcommand{\tableref}[1]{\textbf{表 \ref{#1}}}