\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mlatext}[2025/09/22 Mathematics LaTeX Template]
\LoadClass{article}


%%%%%%%%%%%%%%%%%%%
% Package Imports %
%%%%%%%%%%%%%%%%%%%

% General Formatting
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage[margin=1in]{geometry}

% Math Formatting Packages
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsmath}

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Environment Definitions %
%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Environments for theorems, definitions, examples, proofs, formulae, questions
\newtheoremstyle{theorem}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{:}{5pt}{{\thmname{#1}\thmnumber{ #2}\thmnote{ #3}}}
\newtheoremstyle{definition}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{:}{5pt}{{\thmname{#1}\thmnumber{ #2}\thmnote{ #3}}}
\newtheoremstyle{example}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{:}{5pt}{{\thmname{#1}\thmnumber{ #2}\thmnote{ #3}}}
\newtheoremstyle{proof}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{:}{5pt}{{\thmname{#1}\thmnumber{ #2}\thmnote{ #3}}}
\newtheoremstyle{formula}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{:}{5pt}{{\thmname{#1}\thmnumber{ #2}\thmnote{ #3}}}
\newtheoremstyle{question}{0pt}{0pt}{\normalsize}{0pt}{\bfseries}{:}{5pt}{{\thmname{#1}\thmnumber{ #2}\thmnote{ #3}}}

% Theorem Environments
\theoremstyle{theorem}
\newtheorem{thm}{Theorem}
\newtheorem{lem}{Lemma}
\newtheorem{cor}{Corollary}
\newtheorem{con}{Conjecture}
\newtheorem{pos}{Postulate}

\tcolorboxenvironment{thm}{
  enhanced jigsaw, pad at break*=1mm, breakable,
  left=4mm, right=4mm, top=1mm, bottom=1mm,
  colback=theorembackgroundcolor, boxrule=0pt, frame hidden,
  borderline west={0.5mm}{0mm}{theorembordercolor}, arc=.5mm}

\theoremstyle{definition}
\newtheorem{defn}{Definition}

\theoremstyle{example}
\newtheorem{exl}{Example}

\theoremstyle{proof}
\newtheorem{prf}{Proof}

\theoremstyle{question}
\newtheorem{qst}{Question}


%%%%%%%%%%%%%%%%%%%%%
% Macro Definitions %
%%%%%%%%%%%%%%%%%%%%%

% Quick macro definitions for sets of number systems
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
