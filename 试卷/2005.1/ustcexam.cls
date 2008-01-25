%% This is a LaTeX2e document class for typesetting math exam papers.
%%

%%
%% Version 3.14 (May 18th, 2004)

\LoadClass{exam}


%                    ********************************
%                    ** Redefine parts environment **
%                    ********************************
%\RequirePackage[amssymb]{SIunits}
\renewenvironment{parts}%
  {\def\@queslevel{part}%
     \def\part{%
       \@checkqueslevel{part}%
       \addtocounter{numparts}{1}%
       \@doitem
     }%
     \list{(\thepartno)}%
     {\usecounter{partno}\def\makelabel##1{\hss\llap{##1}}%
       \def\thepartno{\arabic{partno}}%
       \settowidth{\leftmargin}{(m)\hskip\labelsep}
       \labelwidth\leftmargin\advance\labelwidth-\labelsep
       \topsep=0pt
       \partopsep=0pt
     }%
  }%
  {\endlist}

%                    *****************************
%                    ** CJK Fonts configuration **
%                    *****************************
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        重定义字体、字号命令                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{stmaryrd}
\RequirePackage{CJK}
\RequirePackage{CJKnumb}
\newcommand{\xk}{\CJKfamily{song}}
\newcommand{\xw}{\CJKfamily{song}}
\newcommand{\yao}{\CJKfamily{song}}
\newcommand{\you}{\CJKfamily{song}}
\newcommand{\cy}{\CJKfamily{song}}
\newcommand{\hp}{\CJKfamily{song}}
\newcommand{\li}{\CJKfamily{song}}
\newcommand{\shu}{\CJKfamily{song}}
\newcommand{\songti}{\CJKfamily{song}}    % 宋体   (Windows自带simsun.ttf)
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体 (Windows自带simfs.ttf)
\newcommand{\kaiti}{\CJKfamily{kai}}      % 楷体   (Windows自带simkai.ttf)
\newcommand{\heiti}{\CJKfamily{hei}}      % 黑体   (Windows自带simhei.ttf)
\newcommand{\lishu}{\CJKfamily{li}}        % 隶书   (Windows自带simli.ttf)
\newcommand{\youyuan}{\CJKfamily{you}}      % 幼圆   (Windows自带simyou.ttf)
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}     % 字号设置
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} % 字号设置
\newcommand{\yichu}{\fontsize{32pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    % 字号设置
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   % 字号设置
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    % 字号设置
\makeatletter
\newdimen\bp@  \bp@=1bp % 字体定义中使用 PS 磅值。 1 in = 72 bp = 72.27 pt
\def\@cjk@normaleightbp{5}    \def\@cjk@normaleightskip{6}     %八号字
\def\@cjk@normalsevenbp{5.5}  \def\@cjk@normalsevenskip{6.6}   %七号字  
\def\@cjk@smallsixbp{6.5}     \def\@cjk@smallsixskip{7.8}      %小六号  
\def\@cjk@normalsixbp{7.5}    \def\@cjk@normalsixskip{9}       %六号字  
\def\@cjk@smallfivebp{9}      \def\@cjk@smallfiveskip{10.8}    %小五号  
\def\@cjk@normalfivebp{10.5}  \def\@cjk@normalfiveskip{12.6}   %五号字  
\def\@cjk@smallfourbp{12}     \def\@cjk@smallfourskip{14.4}    %小四号  
\def\@cjk@normalfourbp{14}    \def\@cjk@normalfourskip{16.8}   %四号字  
\def\@cjk@smallthreebp{15}    \def\@cjk@smallthreeskip{18}     %小三号  
\def\@cjk@normalthreebp{16}   \def\@cjk@normalthreeskip{19.2}  %三号字  
\def\@cjk@smalltwobp{18}      \def\@cjk@smalltwoskip{21.6}     %小二号  
\def\@cjk@normaltwobp{22}     \def\@cjk@normaltwoskip{26.4}    %二号字  
\def\@cjk@smallonebp{24}      \def\@cjk@smalloneskip{28.8}     %小一号  
\def\@cjk@normalonebp{26}     \def\@cjk@normaloneskip{31.2}    %一号字  
\def\@cjk@smallzerobp{36}     \def\@cjk@smallzeroskip{43.2}    %小初号  
\def\@cjk@normalzerobp{42}    \def\@cjk@normalzeroskip{50.4}   %初号字  
\newcount\CJK@ZihaoNo
\def\defCJKfontsize#1#2#3#4{%
        \fontsize{#1\bp@}{#2pt plus#3pt minus #4pt}\selectfont}
\def\zihao#1{\CJK@ZihaoNo=#1 %
            \ifnum #11<0
                       \ifnum \CJK@ZihaoNo=-0  \defCJKfontsize\@cjk@smallzerobp\@cjk@smallzeroskip{.5}{.3}
                  \else\ifnum \CJK@ZihaoNo=-1  \defCJKfontsize\@cjk@smallonebp\@cjk@smalloneskip{.5}{.3}
                  \else\ifnum \CJK@ZihaoNo=-2  \defCJKfontsize\@cjk@smalltwobp\@cjk@smalltwoskip{.3}{.2}
                  \else\ifnum \CJK@ZihaoNo=-3  \defCJKfontsize\@cjk@smallthreebp\@cjk@smallthreeskip{.3}{.2}
                  \else\ifnum \CJK@ZihaoNo=-4  \defCJKfontsize\@cjk@smallfourbp\@cjk@smallfourskip{.3}{.2}
                  \else\ifnum \CJK@ZihaoNo=-5  \defCJKfontsize\@cjk@smallfivebp\@cjk@smallfiveskip{.2}{.1}
                  \else\ifnum \CJK@ZihaoNo=-6  \defCJKfontsize\@cjk@smallsixbp\@cjk@smallsixskip{.2}{.1}
                  \fi\fi\fi\fi\fi\fi\fi
            \else
                       \ifnum \CJK@ZihaoNo=0   \defCJKfontsize\@cjk@normalzerobp\@cjk@normalzeroskip{.5}{.3}
                  \else\ifnum \CJK@ZihaoNo=1   \defCJKfontsize\@cjk@normalonebp\@cjk@normaloneskip{.5}{.3}
                  \else\ifnum \CJK@ZihaoNo=2   \defCJKfontsize\@cjk@normaltwobp\@cjk@normaltwoskip{.5}{.3}
                  \else\ifnum \CJK@ZihaoNo=3   \defCJKfontsize\@cjk@normalthreebp\@cjk@normalthreeskip{.3}{.2}
                  \else\ifnum \CJK@ZihaoNo=4   \defCJKfontsize\@cjk@normalfourbp\@cjk@normalfourskip{.3}{.2}
                  \else\ifnum \CJK@ZihaoNo=5   \defCJKfontsize\@cjk@normalfivebp\@cjk@normalfiveskip{.3}{.2}
                  \else\ifnum \CJK@ZihaoNo=6   \defCJKfontsize\@cjk@normalsixbp\@cjk@normalsixskip{.2}{.1}
                  \else\ifnum \CJK@ZihaoNo=7   \defCJKfontsize\@cjk@normalsevenbp\@cjk@normalsevenskip{.1}{.1}
                  \else\ifnum \CJK@ZihaoNo=8   \defCJKfontsize\@cjk@normaleightbp\@cjk@normaleightskip{.1}{.1}
                  \fi\fi\fi\fi\fi\fi\fi\fi\fi
           \fi}
\makeatother
%\newcommand\zihao[1]{
%    \ifthenelse{\equal{#1}{0}}{\CJKfontsize{42bp}{50.4pt}{.5pt}{.3pt}}{}
%    \ifthenelse{\equal{#1}{-0}}{\CJKfontsize{36bp}{43.2pt}{.5pt}{.3pt}}{}
%    \ifthenelse{\equal{#1}{1}}{\CJKfontsize{26bp}{31.2pt}{.5pt}{.3pt}}{}
%    \ifthenelse{\equal{#1}{-1}}{\CJKfontsize{24bp}{28.8pt}{.5pt}{.3pt}}{}
%    \ifthenelse{\equal{#1}{2}}{\CJKfontsize{22bp}{26.4pt}{.5pt}{.3pt}}{}
%    \ifthenelse{\equal{#1}{-2}}{\CJKfontsize{18bp}{21.6pt}{.3pt}{.2pt}}{}
%    \ifthenelse{\equal{#1}{3}}{\CJKfontsize{16bp}{19.3pt}{.3pt}{.2pt}}{}
%    \ifthenelse{\equal{#1}{-3}}{\CJKfontsize{15bp}{18pt}{.3pt}{.2pt}}{}
%    \ifthenelse{\equal{#1}{4}}{\CJKfontsize{14bp}{16.8pt}{.3pt}{.2pt}}{}
%    \ifthenelse{\equal{#1}{-4}}{\CJKfontsize{12bp}{14.4pt}{.3pt}{.2pt}}{}
%    \ifthenelse{\equal{#1}{5}}{\CJKfontsize{10.5bp}{12.6pt}{.3pt}{.2pt}}{}
%    \ifthenelse{\equal{#1}{-5}}{\CJKfontsize{9bp}{10.8pt}{.2pt}{.1pt}}{}
%    \ifthenelse{\equal{#1}{6}}{\CJKfontsize{7.5bp}{9pt}{.2pt}{.1pt}}{}
%    \ifthenelse{\equal{#1}{-6}}{\CJKfontsize{6.5bp}{7.8pt}{.2pt}{.1pt}}{}
%    \ifthenelse{\equal{#1}{7}}{\CJKfontsize{5.5bp}{6.6pt}{.1pt}{.1pt}}{}
%    \ifthenelse{\equal{#1}{8}}{\CJKfontsize{5bp}{6pt}{.1pt}{.1pt}}{}
%}
\begin{CJK*}{GBK}{song}
\end{CJK*}
%                    ***************
%                    ** Pagestyle **
%                    ***************

\RequirePackage[a4paper,body={15cm,23.7cm}]{geometry}
\RequirePackage{titlesec,setspace}
\renewcommand{\baselinestretch}{1.7}
\newcommand\pagestyleA{\firstpagefooter{}{\small\zihao{-5} 第~\thepage~页\quad 共~\numpages~页}{}
\runningfooter{}{\small\zihao{-5} 第~\thepage~页\quad 共~\numpages~页}{}}
\newcommand\pagestyleB{\pagestyle{plain}}
\newcommand\pagestyleC{\firstpagefooter{}{\small\zihao{-5} 第~\thepage~页}{}
\runningfooter{}{\small\zihao{-5} 第~\thepage~页}{}}


%                    *************************
%                    ** Graphics and floats **
%                    *************************

%\RequirePackage[dvips]{picture}
\RequirePackage[nooneline]{caption2}
\RequirePackage{graphicx,picins,float,color,fancybox,shapepar}
\renewcommand{\figurename}{图}
\renewcommand{\captionlabeldelim}{}
\piccaptionoutside
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{10pt}

%                    **********************
%                    ** Math Typesetting **
%                    **********************
\RequirePackage{amsmath,amssymb,mdwmath,bm}
\allowdisplaybreaks[4]


%                    **********************
%                    ** List Environment **
%                    **********************
\RequirePackage{enumerate,multienum,paralist}


%                    ********************
%                    ** Table Settings **
%                    ********************
\RequirePackage{longtable,dcolumn,multirow}
\newcolumntype{d}[1]{D{.}{.}{#1}}


%                    *************
%                    ** Answers **
%                    *************
\RequirePackage{answers}
\Newassociation{sol}{Soln}{ans}
\renewcommand{\Solnlabel}[1]{\hspace*{-1cm}#1.}


%                    ***********************
%                    ** Fill in the blank **
%                    ***********************
\newcommand\oneb{\underline{\hspace{1em}}\hspace{0.001em}}
\newcommand\twob{\oneb\oneb}
\newcommand{\fourb}{\twob\twob}
\newcommand{\sixb}{\twob\twob\twob}
\newcommand\tenb{\twob\twob\twob\twob\twob}



%                    *********************
%                    ** Multiple-choice **
%                    *********************
\newcommand{\fourch}[4]{\\\begin{tabular}{*{4}{@{}p{3.5cm}}}(A)~#1 & (B)~#2 & (C)~#3 & (D)~#4\end{tabular}}
\newcommand{\twoch}[4]{\\\begin{tabular}{*{2}{@{}p{7cm}}}(A)~#1 & (B)~#2\end{tabular}\\\begin{tabular}{*{2}{@{}p{7cm}}}(C)~#3 & (D)~#4\end{tabular}}
\newcommand{\onech}[4]{\\(A)~#1 \\ (B)~#2 \\ (C)~#3 \\ (D)~#4}

%                    ***************
%                    ** Templates **
%                    ***************

% Table for Grading
\newcommand\pingfen[1]{\begin{spacing}{1.5}
\fullwidth{\medskip\noindent\begin{tabular}{|c|c|}\hline
      得分 & 评卷人\\ \hline
           &       \\ \hline
\end{tabular}\quad\heiti #1\songti} \end{spacing}\vspace{0.3cm}}

% Title of the test
\makeatletter
\newcommand{\USTC@biaoti}[2]{\begin{spacing}{1.3}\begin{center}\Large\zihao{#1} #2\end{center}\end{spacing}\medskip}
\newcommand{\USTC@title}{中国科学技术大学}
\newcommand{\USTC@yearb}{2004}
\newcommand{\USTC@yeare}{2005}
\newcommand{\USTC@xueqi}{1}
\newcommand{\USTC@kemu}{ 计\ 算\ 方\ 法\ }
\newcommand{\Title}[1]{\renewcommand{\USTC@title}{#1}}
\newcommand{\YearB}[1]{\renewcommand{\USTC@yearb}{#1}}
\newcommand{\YearE}[1]{\renewcommand{\USTC@yeare}{#1}}
\newcommand{\Xueqi}[1]{\renewcommand{\USTC@xueqi}{#1}}
\newcommand{\Kemu}[1]{\renewcommand{\USTC@kemu}{#1}}
\newcommand{\biaoti}[1]{\begin{spacing}{1.3}\begin{center}\Large\zihao{2} #1\end{center}\end{spacing}\medskip}
\newcommand{\Maketitle}{\biaoti{\huge \USTC@title \\[0.2cm] 
      \heiti \USTC@yearb -- \USTC@yeare 学年  第\ \USTC@xueqi \ 学期考试试卷}}
\newcommand{\Makedefen}{
\begin{minipage}{0.9 \textwidth}
{\zihao{5}
考试科目：\underline{ \USTC@kemu \ } \hfill %\hspace{0.93cm}
得分：\underline{\hspace{2.5cm}}%\hspace{5cm}
\\
学生所在系：\underline{\hspace{2.5cm}}\hfill %\hspace{0.25cm}
姓名：\underline{\hspace{2.5cm}}\hfill%\hspace{0.25cm}
学号：\underline{\hspace{2.5cm}}%\hspace{1cm}
}
\end{minipage} }
\makeatother
%\newcommand{\biaoti}[1]{\begin{spacing}{1.3}\begin{center}\Large\zihao{2} #1\end{center}\end{spacing}\medskip}
% Title of the test
%\newcommand{\biaoti}[1]{\begin{spacing}{1.3}\begin{center}\Large\zihao{4} #1\end{center}\end{spacing}\medskip}

% Notice
\newenvironment{notice}{\begin{spacing}{1.5}\heiti 注意事项：\songti\begin{asparaenum}}{\end{asparaenum}\end{spacing}}

% Table for Grading individual problems
\newcommand{\pingfenhou}{\begin{spacing}{1.3}{}\hfill\begin{tabular}{|l|l|}\hline 得分 & \hspace*{1.5cm}\\ \hline\end{tabular}\end{spacing}\bigskip}

% Upright letters in math mode
\newcommand{\rc}{\text{C}}
\newcommand{\ri}{\text{i}}
\newcommand{\ra}{\text{A}}
\newcommand{\rd}{\text{d}}
\newcommand{\limn}{\lim\limits_{n\to\infty}}

% Start of questions with answer
%\newcommand{\solution}[1]{\newpage\setlength{\oddsidemargin}{0.8cm}\noindent\zihao{4}\heiti #1\songti\zihao{5}\par\input{ans1}}
\renewcommand{\solution}[1]{\newpage\setlength{\oddsidemargin}{0.8cm}\noindent\zihao{4}\heiti #1\songti\zihao{5}\par\input{ans1}}
\newenvironment{problems}{\begin{questions}\Opensolutionfile{ans}[ans1]}
{\end{questions}\Closesolutionfile{ans}}

% Upright greek letter pi
%\input{greektex}
%\newcommand\uppi{\text{\gr p}}

% Mi-feng xian
\newcommand\mifengxian{\reversemarginpar \marginpar{\begin{minipage}{1cm} \rotatebox{90}
{-------------------------------------$\bigcirc$----------------------------$\bigcirc$------------
\ \ 答\ \ 题\ \ 时\ \ 不\ \ 要\ \ 超\ \ 过\ \ 此\ \ 线\ \
------------$\bigcirc$----------------------------$\bigcirc$-------------------------------------}
\\
\end{minipage}}
}

% Top-secret
\newcommand\juemi{\noindent\heiti 绝密★启用前\songti}

% Fen template
\newcommand\fen[1]{（本大题共~#1~分）}
\newcommand\xiaofen[1]{(#1分)}
\newcommand\rfen[1]{({\color{red}#1分})}

% nenumerate Environment
\newenvironment{nenumerate}{\medskip\begin{enumerate}\setlength{\itemsep}{1ex}}{\end{enumerate}\medskip}

% nitemize Environment
\newenvironment{nitemize}{\medskip\begin{itemize}\setlength{\itemsep}{1ex}}{\end{itemize}\medskip}

% Units
\RequirePackage{textcomp}
\newcommand\pingxing{\sslash}
\newcommand\m{\ensuremath{\text{m}}}
\newcommand\tian{\ensuremath{\text{d}}}
\newcommand\A{\ensuremath{\text{A}}}
\newcommand\g{\ensuremath{\text{g}}}
\newcommand\kg{\ensuremath{\text{kg}}}
\newcommand\degree{\ensuremath{^\circ}}
\newcommand\ssd{\ensuremath{\text{\textcelsius}}}
\newcommand\rad{\ensuremath{\text{rad}}}
\newcommand\N{\ensuremath{\text{N}}}
\newcommand\Pa{\ensuremath{\text{Pa}}}
\newcommand\J{\ensuremath{\text{J}}}
\newcommand\W{\ensuremath{\text{W}}}
\newcommand\C{\ensuremath{\text{C}}}
\newcommand\ohm{\ensuremath{\Omega}}
\newcommand\mol{\ensuremath{\text{mol}}}
\newcommand\K{\ensuremath{\text{K}}}
\newcommand\h{\ensuremath{\text{h}}}
\newcommand\ton{\ensuremath{\text{t}}}
\newcommand\squarem{\ensuremath{\text{m$^2$}}}
\newcommand\cubicm{\ensuremath{\text{m$^3$}}}
\newcommand\cm{\ensuremath{\text{cm}}}
\newcommand\mm{\ensuremath{\text{mm}}}
\newcommand\squarecm{\ensuremath{\text{cm$^2$}}}
\newcommand\cubiccm{\ensuremath{\text{cm$^3$}}}
\newcommand\squaremm{\ensuremath{\text{mm$^2$}}}
\newcommand\cubicmm{\ensuremath{\text{mm$^3$}}}
\newcommand\liter{\ensuremath{\text{L}}}


\newcommand{\abs}[1]{\left|#1\right|}
\newcommand{\qu}{\question}

\newcommand\Arg{\mathop{\text{Arg}}}
\newcommand\arccot{\mathop{\text{arccot}}}

\renewcommand\leq{\leqslant}
\renewcommand\geq{\geqslant}
\newcommand\pzh{\raisebox{0.03cm}{---$\!$---}}

\renewcommand\section[1]{\fullwidth{\large\heiti#1\songti}}
