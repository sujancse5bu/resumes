\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/10/04 Modern Poppins Resume Class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[10pt,letterpaper]{article}

% Page Geometry & Margins (tuned to fit exactly on a single page)
\usepackage[
  paper=letterpaper,
  left=16mm,
  right=16mm,
  top=13mm,
  bottom=13mm,
  footskip=0mm,
  headheight=0mm,
  headsep=0mm
]{geometry}
\pagestyle{empty}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{primary}{HTML}{00786C}       % Exact Teal from PDF: rgb(0, 120, 108)
\definecolor{textdark}{HTML}{1A1A1A}      % Dark charcoal text
\definecolor{contactgray}{HTML}{333333}   % Contact details

% Hyperref setup for clickable links without boxes
\usepackage[hidelinks,pdfencoding=auto]{hyperref}
\hypersetup{
  colorlinks=false,
  pdfborder={0 0 0}
}

% Typography & Font handling via fontspec (XeLaTeX / LuaLaTeX)
\usepackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}

% Load Poppins fonts from local fonts/ directory or system font fallback
\IfFontExistsTF{Poppins}{
  \setmainfont{Poppins}[
    UprightFont = *-Light,
    BoldFont = *-SemiBold,
    ItalicFont = *-Italic,
    BoldItalicFont = *-SemiBoldItalic
  ]
  \newfontfamily\poppinslight{Poppins}[UprightFont = *-Light]
  \newfontfamily\poppinsextralight{Poppins}[UprightFont = *-ExtraLight]
  \newfontfamily\poppinsregular{Poppins}[UprightFont = *-Regular]
  \newfontfamily\poppinssemibold{Poppins}[UprightFont = *-SemiBold]
  \newfontfamily\poppinsbold{Poppins}[UprightFont = *-Bold]
}{
  \setmainfont{Poppins-Light}[
    Path = fonts/,
    Extension = .ttf,
    BoldFont = Poppins-SemiBold,
    ItalicFont = Poppins-Italic,
    BoldItalicFont = Poppins-SemiBold
  ]
  \newfontfamily\poppinslight{Poppins-Light}[
    Path = fonts/,
    Extension = .ttf,
    BoldFont = Poppins-SemiBold
  ]
  \newfontfamily\poppinsextralight{Poppins-ExtraLight}[
    Path = fonts/,
    Extension = .ttf
  ]
  \newfontfamily\poppinsregular{Poppins-Regular}[
    Path = fonts/,
    Extension = .ttf,
    BoldFont = Poppins-Bold
  ]
  \newfontfamily\poppinssemibold{Poppins-SemiBold}[
    Path = fonts/,
    Extension = .ttf
  ]
  \newfontfamily\poppinsbold{Poppins-Bold}[
    Path = fonts/,
    Extension = .ttf
  ]
}

% Spacing & Lists
\usepackage{enumitem}
\setlist[itemize]{
  leftmargin=1.15em,
  itemsep=2.5pt,
  topsep=2pt,
  partopsep=0pt,
  parsep=0pt
}
\renewcommand{\labelitemi}{\small\textbullet}

% Section Titles (Teal, ExtraLight / Light, uppercase with tracking)
\usepackage{titlesec}
\titleformat{\section}
  {\poppinsextralight\fontsize{10pt}{12pt}\selectfont\color{primary}\addfontfeature{LetterSpace=12.0}\uppercase}
  {}{0em}{}
\titlespacing*{\section}{0pt}{12pt}{5pt}

% Custom Macro: Work Experience Header
\newcommand{\experienceitem}[4]{%
  \noindent
  {\fontsize{10.5pt}{13pt}\selectfont\textbf{#1}}\hfill{\fontsize{9.5pt}{12pt}\selectfont\textbf{#2}}\par\vspace{1.5pt}%
  \noindent
  {\fontsize{10.5pt}{13pt}\selectfont\textbf{#3}}\hfill{\fontsize{9.5pt}{12pt}\selectfont\textbf{#4}}\par
  \vspace{2pt}%
}

% Custom Macro: Education Item
\newcommand{\educationitem}[3]{%
  \noindent
  {\fontsize{10.5pt}{13pt}\selectfont\textbf{#1}}\par\vspace{1.5pt}%
  \noindent
  {\fontsize{10pt}{12.5pt}\selectfont #2}\hfill{\fontsize{9.5pt}{12pt}\selectfont #3}\par
  \vspace{6pt}%
}

% Custom Macro: Project Item
\newcommand{\projectitem}[2]{
  \noindent
  {\fontsize{10.5pt}{13pt}\selectfont\textbf{#1}}\\[2pt]
  {\fontsize{9.3pt}{13pt}\selectfont #2}\par
  \vspace{6pt}
}

% Custom Macro: Skill Category
\newcommand{\skillitem}[2]{
  \noindent
  {\fontsize{9.3pt}{13pt}\selectfont\textbf{#1:} #2}\par
  \vspace{2.5pt}
}
