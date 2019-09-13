\NeedsTeXFormat{LaTeX2e}
%The command \NeedsTeXFormat{LaTeX2e} sets the LATEX version for the class to work. Additionally, a date can be added within brackets to specify the minimal release date required.
\ProvidesClass{exercise}[2019/06/15 Example LaTeX class]
%2019/05/27 version 1.1
%2019/06/15 version 1.2
%The command ProvidesClass{exampleclass}[...] identifies this class as exampleclass and, inside the brackets, the release date and some additional information is included. The date should be in the form YYYY/MM/DD

\LoadClass{exam}
\RequirePackage{amsmath,amssymb,pifont,indentfirst}
\RequirePackage{tikz,stmaryrd,caption2}
\RequirePackage{xeCJK,zhnumber,fontspec}
\RequirePackage{geometry}
\RequirePackage{ifsym,graphicx,wrapfig}
\RequirePackage{xhfill,color,etoolbox,expl3}
\RequirePackage{multirow,tabularx,tabu,diagbox}
\RequirePackage{bbding}
%\RequirePackage is very similar to the well-known \usepackage

%The command \DeclareOption{}{} handles a given option. It takes two parameters, the first one is the name of the option and the second one is the code to execute if the option is passed.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%\PassOptionsToClass{}{}. Passes the option inside the first pair of braces to the document class set inside the second pair of braces. 

\ProcessOptions\relax
%The command \ProcessOptions\relax executes the code fore each option and must be inserted after all the option-handling commands were typed. There's a starred version of this command that will execute the options in the exact order specified by the calling commands.

% 中英文字体设置
\setCJKfamilyfont{zhsong}[AutoFakeBold = {2.17}]{SimSun}
\setCJKmonofont{SimSun}
%\newCJKfontfamily[song]\songti{SimSun}
%\newCJKfontfamily[hei]\heiti{SimHei}
\setCJKfamilyfont{li}{LiSu} %隶书  li
\newcommand{\li}{\CJKfamily{li}}
%\newCJKfontfamily[li]\li{LiSu}
\setCJKfamilyfont{yy}{YouYuan} %幼圆  yy
\newcommand{\yy}{\CJKfamily{yy}}
\setmainfont{Times New Roman}
\setsansfont{Arial}
% 定义默认字体大小和行距
\renewcommand{\normalsize}{\fontsize{12pt}{\baselineskip}\selectfont}

% 字号

%------------------------------设置字体大小------------------------%
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}     %初号
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} %小初号
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}      %一号
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}      %二号
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}  %小二号
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}  %三号
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}%     四号
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  %小四号
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    %五号
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   %小五号
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  %六号
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    %七号


% 试卷纸张设置
\geometry{margin={2cm,1.8cm},a4paper} 

% 设置首行缩进
\setlength{\parindent}{0em}


% 多小问的题目以罗马字母开头
\renewcommand{\thepartno}{\Roman{partno}}

% 定义输出大小写罗马数字的命令
\newcommand{\rmnum}[1]{\romannumeral #1}
\newcommand{\Rmnum}[1]{\expandafter\@slowromancap\romannumeral #1@}

\newcommand*{\circled}[1]{\lower.7ex\hbox{\tikz\draw (0pt, 0pt)%
    circle (.5em) node {\makebox[1em][c]{\small #1}};}}
\renewcommand{\figurename}{图}
\renewcommand{\captionlabeldelim}{.}

% 大题命令
\newcommand{\dati}[2]{\fullwidth{\large \textbf{#1、#2}}}

% 向量符号
\newcommand{\vect}[1]{\mathbf{#1}}

% 分数的名字
%\pointname{\%}
\pointname{分}

% 判断题
\newcommand{\tf}[1][{}]{%
\fillin[#1][0.25in]%
}
