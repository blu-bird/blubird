\LoadClass[12pt]{article}
\ProvidesClass{problemset}

\usepackage{blubase}
\usepackage{fancyhdr}
\usepackage[margin=1in]{geometry}

\theoremstyle{plain}
\theoremstyle{definition}
\theoremstyle{remark}

\newtheorem{theorem}{Theorem}
\newtheorem{corollary}{Corollary}
\newtheorem{lemma}{Lemma}
\newtheorem{proposition}{Proposition}
\newtheorem{defn}{Definition}
\newtheorem{Conjecture}{Conjecture}
\newtheorem{claim}{Claim}
\newtheorem{property}{Property}
\newtheorem*{sketch}{Sketch}
\newtheorem{remark}{Remark}
\newtheorem{example}{Example}

\newcommand{\studname}[1]{\gdef\@studname{#1}}
\newcommand{\studmail}[1]{\gdef\@studmail{#1}}
\newcommand{\coursename}[1]{\gdef\@coursename{#1}}
\newcommand{\hwNo}[1]{\gdef\@hwNo{#1}}
\newcommand{\duedate}[1]{\gdef\@duedate{#1}}

\let\Oldmaketitle\maketitle
\renewcommand{\maketitle}
{
	\Oldmaketitle
	\thispagestyle{plain}
}

\newcounter{begin}
\setcounter{begin}{1}

\let\Oldsection=\subsection
\renewcommand*{\section}{
	\Oldsection
}

\fancypagestyle{plain}
{
	\fancyhead{}
	\fancyfoot{}
	\fancyfoot[C] {\thepage}
	\renewcommand{\headrulewidth}{0pt}
}

\pagestyle{fancy}

\fancyhead{}
\fancyfoot{}
\fancyfoot[C] {\thepage}
\fancyhead[L]{\@coursename \ -- Problem Set \@hwNo}
\fancyhead[R]{\@studname}
\renewcommand{\footrulewidth}{0.4 pt}

%\newcommand*{\skipevenpage}{
%	\newpage
%	\if@twoside
%	\setcounter{sum}{\value{page}}
%	\addtocounter{sum}{\value{emptypages}}
%	\ifthenelse{\isodd{\value{sum}}}
%	{
%	}
%	{
%		\thispagestyle{empty}
%		\hbox{}
%		\newpage
%		\addtocounter{page}{-1}
%		\addtocounter{emptypages}{1}
%	}
%	{
%	}
%	\fi
%}

\title{\vspace{-2cm}\@coursename \ -- Problem Set \@hwNo}
\author{\@studname}
\date{\@duedate}

\endinput
