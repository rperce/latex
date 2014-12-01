\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2014/02/11 A fancyhdr article for
coursework]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

\LoadClass{article}
\RequirePackage{fancyhdr}
\RequirePackage{fullpage}
\RequirePackage{enumitem}

\setlength{\headsep}{0.5cm}
\setlength{\topmargin}{-1.25cm}
\setlength{\headheight}{42pt}

\setlength{\parindent}{0cm}
\setlength{\parskip}{3mm}

\newcommand*{\varname}{Default Student}
\newcommand*{\varcourse}{Default Course}
\newcommand*{\varteacher}{Default Name}
\newcommand*{\varctitle}{Default Assignment}

\newcommand*{\name}[1]{\renewcommand*{\varname}{#1}}
\newcommand*{\course}[1]{\renewcommand*{\varcourse}{#1}}
\newcommand*{\teacher}[1]{\renewcommand*{\varteacher}{#1}}
\newcommand*{\ctitle}[1]{\renewcommand*{\varctitle}{#1}}

\newcommand*{\updateheader}{
    \pagestyle{fancy}{
        \fancyhead[L]{\rule[3ex]{0pt}{2ex}}
        \fancyhead[C]{\varctitle}
        \fancyhead[R]{\varname\\\varcourse\\\varteacher}
    }
}

\newenvironment{problems}[1][\arabic*.]
{\begin{enumerate}[label={#1}, leftmargin=*, format={\textbf}]}
{\end{enumerate}}

\endinput
