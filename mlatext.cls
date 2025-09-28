\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mlatext}[2025/09/22 Mathematics LaTeX Template]
\LoadClass{article}[12pt]


%%%%%%%%%%%%%%%%%%%
% Package Imports %
%%%%%%%%%%%%%%%%%%%

% General Formatting
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{enumitem}

\newlist{subproblem}{enumerate}{2}
\setlist[subproblem]{itemsep=5pt, topsep=5pt}
\setlist[subproblem,1]{leftmargin=*,label=(\alph*),before=\itshape}
\setlist[subproblem,2]{leftmargin=*,label=(\roman*),before=\itshape}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[LO, RE]{\thepage}
\fancyfoot[LO, RE]{\thepage}

% Math Formatting Packages
\RequirePackage{amsthm}
\RequirePackage{parskip}
\RequirePackage{amssymb}
\RequirePackage{amsmath}

\setlength{\parskip}{20pt}
% Graphics Packages
\RequirePackage{tikz}
\RequirePackage{tikz-3dplot}
\RequirePackage{subcaption}

% Coloring
\RequirePackage{xcolor}
\RequirePackage[many]{tcolorbox}

%%%%%%%%%%%%%%%%%%%%%
% Color Definitions %
%%%%%%%%%%%%%%%%%%%%%

\definecolor{sectiondividercolor}{RGB}{0,0,0}
            
\definecolor{proofcolor}{RGB}{0,0,0}

% Dark orange and Dark Red rgb
\definecolor{theorembordercolor}{RGB}{151, 63, 5}
\definecolor{theorembackgroundcolor}{RGB}{248, 241, 234}

\definecolor{examplebordercolor}{RGB}{0, 110, 184}
\definecolor{examplebackgroundcolor}{RGB}{240, 244, 250}

\definecolor{definitionbordercolor}{RGB}{0, 150, 85}
\definecolor{definitionbackgroundcolor}{RGB}{239, 247, 243}

\definecolor{propertybordercolor}{RGB}{128, 0, 128}
\definecolor{propertybackgroundcolor}{RGB}{255, 240, 255}

\definecolor{formulabordercolor}{RGB}{0, 0, 0}
\definecolor{formulabackgroundcolor}{RGB}{230, 229, 245}

\definecolor{questionbordercolor}{RGB}{0, 110, 184}
\definecolor{questionbackgroundcolor}{RGB}{255, 255, 255}

%%%%%%%%%%%%%%%
% Formatting  %
%%%%%%%%%%%%%%%

\titleformat{\section}{\bfseries\LARGE}{\thesection.}{6pt}{}[\tiny{\color{sectiondividercolor}\rule{\linewidth}{1pt}}]
        
\titleformat{\subsection}{\bfseries\Large}{\thesubsection.}{6pt}{}[\tiny{\color{sectiondividercolor}\rule{\linewidth}{1pt}}]

\titleformat{\subsubsection}{\bfseries\large}{\thesubsubsection.}{6pt}{}[\tiny{\color{sectiondividercolor}\rule{\linewidth}{1pt}}]
            
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Environment Definitions %
%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Environments for theorems, definitions, examples, proofs, formulae, questions
\newtheoremstyle{theorem}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{\newline}{5pt}{{\thmname{#1}\thmnumber{ #2}.\thmnote{ (#3)}}}
\newtheoremstyle{definition}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{\newline}{5pt}{{\thmname{#1}\thmnumber{ #2}.\thmnote{ #3}}}
\newtheoremstyle{example}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{\newline}{5pt}{{\thmname{#1}\thmnumber{ #2}.\thmnote{ #3}}}
\newtheoremstyle{proof}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{\newline}{5pt}{{\thmname{#1}\thmnumber{ #2}.\thmnote{ #3}}}
\newtheoremstyle{formula}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{\newline}{5pt}{{\thmname{#1}\thmnumber{ #2}.\thmnote{ #3}}}
\newtheoremstyle{question}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{}{\newline}{{\thmname{#1}\thmnumber{ #2}.\thmnote{ #3}}}
\newtheoremstyle{solution}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{\newline}{5pt}{{\thmname{#1}}}

% Theorem Environments
\theoremstyle{theorem}
\newtheorem{thm}{Theorem}
\newtheorem{lem}{Lemma}
\newtheorem{cor}{Corollary}
\newtheorem{con}{Conjecture}
\newtheorem{pos}{Postulate}

\tcolorboxenvironment{thm}{
  enhanced jigsaw, pad at break*=1mm,% breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=theorembackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{theorembordercolor}, arc=.5mm}

\tcolorboxenvironment{lem}{
  enhanced jigsaw, pad at break*=1mm, breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=theorembackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{theorembordercolor}, arc=.5mm}

\tcolorboxenvironment{cor}{
  enhanced jigsaw, pad at break*=1mm, breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=theorembackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{theorembordercolor}, arc=.5mm}

\tcolorboxenvironment{con}{
  enhanced jigsaw, pad at break*=1mm, breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=theorembackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{theorembordercolor}, arc=.5mm}

\tcolorboxenvironment{pos}{
  enhanced jigsaw, pad at break*=1mm, breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=theorembackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{theorembordercolor}, arc=.5mm}


\theoremstyle{definition}
\newtheorem{defn}{Definition}

\theoremstyle{example}
\newtheorem{exl}{Example}

\newenvironment{sol}{\begin{flushleft}\setlength{\parskip}{5pt}\textbf{Solution.}\\}{\end{flushleft}}

\theoremstyle{proof}
\newtheorem{prf}{Proof}

\theoremstyle{question}
\newtheorem{qst}{Question}

\tcolorboxenvironment{defn}{
  enhanced jigsaw, pad at break*=1mm,% breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=definitionbackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{definitionbordercolor}, arc=.5mm}

\tcolorboxenvironment{exl}{
  enhanced jigsaw, pad at break*=1mm,% breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=examplebackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{examplebordercolor}, arc=.5mm}

\tcolorboxenvironment{prf}{
  enhanced jigsaw, pad at break*=1mm, breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=theorembackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{theorembordercolor}, arc=.5mm}

\tcolorboxenvironment{qst}{
  enhanced jigsaw, pad at break*=10mm,% breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  opacityback=0, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{questionbordercolor}, arc=.5mm}


%%%%%%%%%%%%%%%%%%%%%
% Macro Definitions %
%%%%%%%%%%%%%%%%%%%%%

% Titling
\newcommand{\maketitlepage}{
%  \begin{tcolorbox}[]
%    \begin{center}
%      {\bfseries\LARGE #1}\\[5pt]
%      {\bfseries\Large #2}
%    \end{center}
%  \end{tcolorbox}
  \maketitle
  \tableofcontents
  \newpage}

% Quick macro definitions for sets of number systems
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}

\newcommand{\nlist}[2]{
  #1_1, #1_2, \ldots, #1_{#2 - 1}, #1_{#2}}

\newcommand{\nvector}[1]{\begin{bmatrix} #1_1\\#1_2\\\vdots\\#1_{n - 1}\\#1_n \end{bmatrix}}

\newcommand{\norm}[1]{\lVert #1 \rVert}
\newcommand{\abs}[1]{\lvert #1 \rvert}
\newcommand{\tikzgrid}[5]{
  \draw[step=#5, very thin, color=gray] (#1, #2) grid (#3, #4);}

