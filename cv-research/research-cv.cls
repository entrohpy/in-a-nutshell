% Research-only extensions to Awesome CV.
% Load the original class and forward all document options unchanged.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv-research/research-cv}[2026/11/17 Research CV extensions]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{awesome-cv}}
\ProcessOptions\relax
\LoadClass{awesome-cv}

% Keep section headings with the first entry as the research CV grows.
\RequirePackage{needspace}
\pretocmd{\cvsection}{\Needspace{5\baselineskip}}{}{}

% Reuse the template's color and hyperlink support, with visible link labels.
% Usage: \cvresearchlink{<label>}{<url>}, or \eprint{<url>}.
\newcommand*{\cvresearchlink}[2]{%
  \href{#2}{\textcolor{awesome}{\textup{\underline{#1}}}}%
}
\newcommand*{\eprint}[1]{\cvresearchlink{eprint}{#1}}

% Reuse cventry: title and venue above authors and paper links.
% Usage: \cvpublication{<title>}{<authors>}{<venue/year>}{<links>}
\newcommand*{\cvpublication}[4]{%
  \cventry{#2}{#1}{#3}{#4}{}%
}
