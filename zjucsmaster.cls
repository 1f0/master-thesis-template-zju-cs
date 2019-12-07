% Zhejiang University Master Thesis Latex Template
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{zjucsmaster}[2019/12/15 v0.1 ZJU CS Master Thesis Class]

\if@twoside
   \LoadClass[a4paper,12pt,titlepage,twoside,openany]{book}
\else
   \LoadClass[a4paper,12pt,titlepage,oneside]{book}
\fi

% necessary packages
\RequirePackage[slantfont,boldfont]{xeCJK}  % Chinese supported
\RequirePackage{titlesec}                   % cross reference
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}                   % frontmatter...
\RequirePackage[plain]{fancyref}            % \fref for figure
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{chngcntr}                   % \counterwithin
\RequirePackage{graphicx}
\RequirePackage{amsmath}                    % \Vert
\RequirePackage{amsthm}                     % theorem
\RequirePackage{amsfonts}                   % \mathbb
\RequirePackage{gensymb}                    % degree circle
\RequirePackage{mathtools}
\RequirePackage{setspace}
\RequirePackage{calc}                       % \setcounter \setlength
\RequirePackage{xpatch}                     % xpatchcmd for counter
\RequirePackage[super,square]{natbib}       % superscript citing
\RequirePackage[labelsep=quad]{caption}
\RequirePackage[top=2.2cm,bottom=1.8cm,left=2.7cm,right=2cm]{geometry}
\RequirePackage{todonotes}

% set Chinese font
\setCJKmainfont{SimSun}
\setCJKfamilyfont{KaiShu}{KaiTi}
\setCJKfamilyfont{HeiTi}{SimHei}
\newcommand{\kaiti}{\CJKfamily{KaiShu}}
\newcommand{\heiti}{\CJKfamily{HeiTi}}

% Chinese adaption of chapter and content stuffs
\renewcommand{\thechapter}{第 \arabic{chapter} 章}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\listfigurename}{图~目~录}
\renewcommand{\listtablename}{表~目~录}
\renewcommand{\bibname}{参考文献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\frefchapname}{}              % fancyref adaption of chinese
\setcounter{tocdepth}{2}                    % 设置目录的深度到 subsection

% Chinese font size
\newcommand{\chuhao}{\fontsize{42pt}{50.4pt}\selectfont}
\newcommand{\xiaochu}{\fontsize{36pt}{43.2pt}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{31.2pt}\selectfont}
\newcommand{\xiaoyi}{\fontsize{24pt}{28.8pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{26.4pt}\selectfont}
\newcommand{\xiaoer}{\fontsize{18pt}{21.6pt}\selectfont}
\newcommand{\sanhao}{\fontsize{16pt}{19.2pt}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{18pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{16.8pt}\selectfont}
\newcommand{\shisanbang}{\fontsize{13pt}{15.pt}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{14.4pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{12.6pt}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{10.8pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\newcommand{\xiaoliu}{\fontsize{6.5pt}{7.8pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{6.6pt}\selectfont}
\newcommand{\bahao}{\fontsize{5pt}{6pt}\selectfont}

% spacing format
\onehalfspacing

% correct counter
\xpatchcmd{\c@t@sin}{\@nameuse{the#2}.}{\arabic{#2}-}{}{}% 将图表名中的chapter改为数字
\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}
\DeclareCaptionFormat{wuhaoformat}{\wuhao#1#2#3}
\captionsetup{format=wuhaoformat}

% chapter, section format ...
\titleformat{\chapter}[block]{\heiti\sanhao\bfseries\filcenter}{\thechapter}{1em}{}{}
\titlespacing{\chapter}{0em}{0pt}{18pt}
\titlecontents{chapter}[0em]{}{\heiti\xiaosi\thecontentslabel\hspace{1em}}{\xiaosi}{\xiaosi\titlerule*[5pt]{.}\contentspage}
\titleformat{\section}[hang]{\heiti\sihao\bfseries}{\thesection}{1em}{}{}
\titlespacing{\section}{0em}{24pt}{6pt}
\titlecontents{section}[1em]{}{\xiaosi\thecontentslabel\hspace{1em}}{}{\xiaosi\titlerule*[5pt]{.}\contentspage}
\titleformat{\subsection}[hang]{\heiti\shisanbang}{\thesubsection}{1em}{}{}
\titlespacing{\subsection}{0em}{12pt}{6pt}
\titlecontents{subsection}[2em]{}{\xiaosi\thecontentslabel\hspace{1em}}{}{\xiaosi\titlerule*[5pt]{.}\contentspage}
\titleformat{\subsubsection}[hang]{\heiti\xiaosi}{\thesubsubsection}{1em}{}{}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}

% footer and header
\renewcommand{\chaptermark}[1]{\markright{#1}}% remove unwanted chapter number

\fancypagestyle{frontmatter}{
  \fancyhf{}
  \fancyhead[L]{\xiaowu 浙江大学硕士学位论文}
  \fancyhead[R]{\xiaowu \rightmark}
  \fancyfoot[C]{\xiaowu \thepage}
}

\fancypagestyle{mainmatter}{
  \fancyhf{}
  \fancyhead[L]{\xiaowu 浙江大学硕士学位论文}
  \fancyhead[R]{\xiaowu \thechapter \hspace{1em} \rightmark}
  \fancyfoot[C]{\xiaowu \thepage}
}
\fancypagestyle{backmatter}{
  \fancyhf{}
  \fancyhead[L]{\xiaowu 浙江大学硕士学位论文}
  \fancyhead[R]{\xiaowu \rightmark}
  \fancyfoot[C]{\xiaowu \thepage}
}

\fancypagestyle{tocmatter}{
  \fancyhf{}
  \fancyhead[L]{\xiaowu 浙江大学硕士学位论文}
  \fancyhead[R]{\xiaowu 目录}
  \fancyfoot[C]{\xiaowu \thepage}
}

% 强制``图目录''、``表目录''页眉为``目录''
\AtBeginDocument{
  \addtocontents{lof}{\protect\thispagestyle{tocmatter}}
  \addtocontents{lot}{\protect\thispagestyle{tocmatter}}
}

% 目录
\newcommand{\contentsformat}{\heiti\sanhao\bfseries}
\renewcommand{\contentsname}{目录}
\renewcommand\tableofcontents{
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsformat\contentsname}
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
}

% global command
\newcommand{\zjutitlec}{}
\newcommand{\zjutitlecl}{}
\newcommand{\zjutitlee}{}
\newcommand{\zjutitleel}{}
\newcommand{\zjuauthornamec}{}
\newcommand{\zjuauthornamee}{}
\newcommand{\zjuadvisorc}{}
\newcommand{\zjuadvisore}{}
\newcommand{\zjumajorc}{}
\newcommand{\zjumajore}{}
\newcommand{\zjucollegec}{}
\newcommand{\zjucollegee}{}
\newcommand{\zjudatec}{}
\newcommand{\zjudatee}{}
\newcommand{\zjutitle}[4]{
  \renewcommand{\zjutitlec}{#1}
  \renewcommand{\zjutitlecl}{#2}
  \renewcommand{\zjutitlee}{#3}
  \renewcommand{\zjutitleel}{#4}
}
\newcommand{\zjuauthor}[2]{
  \renewcommand{\zjuauthornamec}{#1}
  \renewcommand{\zjuauthornamee}{#2}
}
\newcommand{\zjuadvisor}[2]{
  \renewcommand{\zjuadvisorc}{#1}
  \renewcommand{\zjuadvisore}{#2}
}
\newcommand{\zjumajor}[2]{
  \renewcommand{\zjumajorc}{#1}
  \renewcommand{\zjumajore}{#2}
}
\newcommand{\zjucollege}[2]{
  \renewcommand{\zjucollegec}{#1}
  \renewcommand{\zjucollegee}{#2}
}
\newcommand{\zjudate}[2]{
  \renewcommand{\zjudatec}{#1}
  \renewcommand{\zjudatee}{#2}
}

% 方程编号
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
% 下划线
\newcommand{\zjuunderline}[2]{
  \underline{\makebox[#1]{#2}}
}
% 数学常用命令
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
% 设置图片路径
\graphicspath{{img/}}
% 数学定理
\newtheoremstyle{zjutheorem}
   {9pt}{9pt}{\ttfamily}{0pt}{\heiti}{：}{0pt}{}
\theoremstyle{zjutheorem}
\newtheorem{zjuhypothsis}{假设~}[]
\newtheorem{zjudefine}{定义~}[]
\newtheorem{zjutheorem}{定理~}[]
\newtheorem{zjuproposition}{命题~}[]
\newenvironment{zjuproof}{\begin{proof}[\textnormal{\heiti 证明~}]}{\end{proof}}

\bibliographystyle{gbt7714-2005}