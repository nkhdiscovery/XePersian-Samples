
%%
%%  This is file `SBU.cls',
%%  The original file was xepersian-thesis.cls by Vafa Khalighi
%%   __________________________________
%%   Copyright © 2011-2012 Vahid Damanafshan
%%  
%%   http://damanafshan.tk      
%%   http://forum.parsilatex.com
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SBU}
              [17/8/2011 v0.1
 Persian thesis document class in XeLaTeX for University of Shahid Beheshti theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}
\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\vtitle}{\begin{titlepage}
%\topmargin=-30pt
%\vspace{-3cm}
\centerline{{\includegraphics[height=4.3cm]{logo}}}
%--------------------------
\vskip 1cm
{\large\bfseries\universityof\space\@university}\par
{\large\bfseries\departmentof\space\@faculty}
\par
{\large\bfseries\groupof\space\@subject}
\par
\vfill
%--------------------------
\vskip 15mm
\if@mscthesis 
{\huge\bfseries\writtenfor
%\par
\@degree}
\else
{\large\bfseries 
رساله
\@degree}
\fi
\par
%--------------------------
\vskip 1.5cm
{\large\bfseries \onvan}\par
\vskip 5mm
{\Huge\bfseries \@title}\par
%---------------------------
\vskip 1cm
{\large%
  \by}\par
\par
{\Large\bfseries{\nastaliq\large\bfseries   \@name\ \ \@surname}}\par
%--------------------------------------------------
\vskip 1cm
\large
{\ifx\@firstsupervisor\undefined%
\ifx\@secondsupervisor\undefined%
\else\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
استادان راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\par\large
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
استاد مشاور
{\Large\bfseries\par
\@firstadvisor}
\else

\large
استادان مشاور
\par
{\Large\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}

\par
\vskip 1.5cm

{\large \@thesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}%
}
\newcommand{\abstractview}{
\baselineskip=.7cm
\begin{frame}
\noindent
نام خانوادگی دانشجو: 
\@surname
 \hspace*{\fill}
 نام: 
\@name
 \hspace*{\fill}\\ \hrule
 \vspace{3mm}
 \noindent
 عنوان:
\@title\\ \hrule
 \vspace{3mm}
 \noindent
{\ifx\@firstsupervisor\undefined%
\ifx\@secondsupervisor\undefined%
\else\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما:
{
\@firstsupervisor}
\else
\large
استادان راهنما:
{\@firstsupervisor{} و \@secondsupervisor}
\fi\fi}%\par
\noindent
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
\par\noindent
استاد مشاور:
{
\@firstadvisor}
\else\\
\large
استادان مشاور:
{\@firstadvisor{} و \@secondadvisor}
\fi\fi}
\\ \hrule
 \vspace{3mm}
 \noindent
 مقطع تحصیلی:
 \if@mscthesis
کارشناسی ارشد
\else
دکتری
\fi
 \hspace*{\fill}
رشته: 
\@subject
 \hspace*{\fill}
 گرایش:
\@field
\\ \hrule
 \vspace{3mm}
 \noindent
دانشگاه: 
\@university
 \hspace*{\fill}
\@faculty\hspace*{\fill}
\\ 
تاریخ فارغ‌التحصیلی:
\@thesisdate
 \hspace*{\fill}
تعداد صفحات: 
\pageref{LastPage}\hspace*{\fill}
\\ \hrule
 \vspace{3mm}
 \noindent
واژگان کلیدی:
\@keywords
\\ \hrule
 \vspace{3mm}
 \noindent
\textbf{چکیده}\par
\@fa-abstract
\end{frame}
}
\def\frame{\newpage
\thispagestyle{empty}
\begin{framed}\thispagestyle{empty}}
\def\endframe{\thispagestyle{empty}\end{framed}
\thispagestyle{empty}
\newpage
}
\def\abstractpage{\newpage
\thispagestyle{empty}
\vskip 15mm
\par
\begin{abstract}}
\def\endabstractpage{\end{abstract}
\newpage
}

\def\latinabstract{\newpage
\thispagestyle{empty}
\vskip 15mm
\begin{center}{\Large\bfseries \@latintitle \\[5mm]}
{\bfseries Abstract}
\end{center}
\vspace{5mm}}

\def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}

\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{\nastaliq \scriptsize \@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

\def\abstract{\subsection*{\abstractname}\small
\@normalsize}
\def\endabstract{\par}

%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%  \ol@chapter}

\font\titlefont=cmssbx10 scaled 2074
\font\supervisorfont=cmbxti10

\newcommand{\latinvtitle}{%
\begin{frame}
\noindent
Surname:
\@latinsurname
 \hspace*{\fill}
Name:
\@latinname
 \hspace*{\fill}\\ \hrule
 \vspace{3mm}
 \noindent
Title:
\@latintitle\\ \hrule
 \vspace{3mm}
 \noindent
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor:
{
\@firstlatinsupervisor}
\else
\large
Supervisors:
{ \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}%\par
\noindent
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor:
{
\@firstlatinadvisor}
\else
\large
Advisors:
{\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\\ \hrule
 \vspace{3mm}
 \noindent
Degree:
 \if@mscthesis
 Master of Science
\else
 Doctor of Science
\fi
 \hspace*{\fill}
Subject:
\@latinsubject
\hspace*{\fill}
\\ 
Field:
\@latinfield
\\ \hrule
 \vspace{3mm}
 \noindent
\@latinuniversity
 \hspace*{\fill}
\@latinfaculty\hspace*{\fill}
\\ 
Date:
\@latinthesisdate
 \hspace*{\fill}
Number of pages:
\pageref{LastPage}\hspace*{\fill}
\\ \hrule
 \vspace{3mm}
 \noindent
Keywords:
\@latinkeywords
\\ \hrule
 \vspace{3mm}
 \noindent
\textbf{Abstract}\par
\@en-abstract
\end{frame}
\newpage
\thispagestyle{empty}
\clearpage
~~~
\newpage
\begin{titlepage}
%\vspace{-1.5cm}
\centerline{{\includegraphics[height=4.3cm]{logo}}}
%-------------------------------------
\vskip 1cm
\large\bfseries
\@latinuniversity \par
\@latinfaculty\par
\@latinsubject
\par
\vfill
%-------------------------------------
\vskip 5mm
{\large\@latindegree\space\latinwrittenfor}\par
%-------------------------------------
\vskip 1.5cm
\addtolength{\baselineskip}{5mm}
{\titlefont \@latintitle} \par
\addtolength{\baselineskip}{-5mm}
%-------------------------------------
\vskip 1cm
{\bfseries\latinby}\par
{\large %\supervisorfont
\rm\@latinname \; \@latinsurname}\par
%-------------------------------------
\vskip 1cm
\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor
{\Large\bfseries\par
\@firstlatinsupervisor}
\else
\large
Supervisors
\par
{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par
\large
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor
{\Large\bfseries\par
\@firstlatinadvisor}
\else

\large
Advisors
\par
{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}

\par
\vskip 1.5cm

{\large\@latinthesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}
}

\def\onvan{عنوان}
\def\latinby{by}
\def\by{نگارش}
\def\writtenfor{پایان‌نامه }
\def\undersupervision{استاد راهنما}
\def\underadvisor{استاد مشاور}
\def\departmentof{دانشکده}
\def\universityof{دانشگاه}
\def\groupof{گروه}
\def\latinwrittenfor{Thesis}
\def\latinundersupervision{Supervisor:}
\def\latinunderadvisor{Advisor:}


%% 
%% Copyright © 2011-2012      by Vahid Damanafshan     
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%% by Vahid Damanafshan.
%% 
%% 
%% 
%% 
%% Special thanks to Vafa Khalighi for his valuable hints.
%%
%% End of file `SBU.cls'.
