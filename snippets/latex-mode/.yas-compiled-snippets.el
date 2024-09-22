;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
		     '(("_" "_\\{$1\\}$0" "Underscript" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/underscript" nil nil)
		       ("tabtblr" "\\begin{table}[tbh]\n  \\centering\n  ${1:\\caption\\{${2:Example table}\\}\\label\\{tab:${3:example-table}\\}\n  }\\begin\\{tblr\\}\\{\n    width = \\linewidth,\n    colspec = \\{${4:Q[l] Q[c,m] X}\\},\n    row\\{1\\} = \\{font=\\bfseries\\},\n    hlines, vlines,\n    \\}\n    $5 & & \\\\\n    & &\n  \\end\\{tblr\\}\n\\end\\{table\\}\n$0" "Table based on tblr" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/tabletrblr" nil nil)
		       ("tablex" "\\begin{table}[tbh]\n  \\centering\n  \\caption{${1:Example table}}\n  \\begin{tabularx}{$2\\\\linewidth}{l XX}\n    $3 & & \\\\\n     & &\n  \\end{tabularx}\n\\end{table}\n$0" "Table based on tabularx" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/tabletabularx" nil nil)
		       ("tabarray" "\\begin{table}[tbh]\n  \\centering\n  ${1:\\caption\\{${2:Example table}\\}\\label\\{tab:${3:example-table}\\}\n  }\\begin\\{${4:tblr}\\}\\{\n    width = \\linewidth,\n    colspec = \\{${5:Q[l] Q[c,m] X}\\},\n    row\\{1\\} = \\{font=\\bfseries\\},\n    hlines, vlines,\n    \\}\n    $6 & & \\\\\n    & &\n  \\end\\{$4\\}\n\\end\\{table\\}\n$0" "Table based on tabularray" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/tabletabularray" nil nil)
		       ("table" "\\begin{table}[tbh]\n  \\centering\n  \\caption{${1:Example table}}\n  \\begin{tabular}{ccc}\n    $2 & & \\\\\n     & &\n  \\end{tabular}\n\\end{table}\n$0" "Table based on tabular" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/tabletabular" nil nil)
		       ("\\S" "\\\\sum${1:_\\{${2:i=1}\\}}${3:^\\{${4:N}\\}}$0" "summation" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/summation" nil nil)
		       ("showfr" "\\usepackage{showframe}\n\\renewcommand*\\ShowFrameLinethickness{0.2pt}\n\\renewcommand*\\ShowFrameColor{\\color{${1:blue}}}\n$0" "Show frame with settings" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/showframes" nil nil)
		       ("\\P" "\\\\Prob[P]\\{${1:X}\\}$0" "Probability - capital" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/probability-simple" nil nil)
		       ("\\p" "\\\\Prob\\{${1:X}\\}$0" "Probability - simple" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/probability-capital" nil nil)
		       ("\\pp" "\\Prob${1:_\\{${2:X}\\}}${3:[${4:p}]}\\{${5:x}\\}${6:[$7]}$0" "Probability" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/probability" nil nil)
		       ("[[" "\\\\[\n  $1\n\\\\]$0" "Short way to render outline equation" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/outline-equation-short" nil nil)
		       ("newex" "\\NewDocumentEnvironment{${1:name}}{${2:s O{} m} +b}{%\n  #4\n}{$3}\n$0" "Newdocument environment (xparse)" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/newenvironmentxparse" nil nil)
		       ("newx" "\\NewDocumentCommand{\\\\${1:name}}{${2:s O{} m}}{%\n  ${3:% code here}}\n$0" "Add new command (xparse)" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/newcommandxparse" nil nil)
		       ("mat" "\\begin{matrix}\n  $1\n\\end{matrix}\n$0" "Math matrix environment" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/matrixenvironment" nil nil)
		       ("\\W" "\\\\Wec{${1:x}}$0" "Math vector" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/mathvector" nil nil)
		       ("\\B" "\\\\Bec\\{${1:\\mu}\\}$0" "Math symbol vector" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/mathsymbolvector" nil nil)
		       ("\\cal" "\\\\mathcal{${1:D}}$0" "Math caligraphic symbols" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/math-caligraphic-symbols" nil nil)
		       ("in" "\\\\($1\\\\)$0" "Inline math mode" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/inlinemathmode" nil nil)
		       ("ga" "\\begin{gather$1}\n  $2\n\\end{gather$1}\n$0" "Math gather environment" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/gatherenvironment" nil nil)
		       ("figure" "\\begin{figure}${1:[${2:tbh}]}\n  \\centering\n  \\includegraphics[width=${3:0.5}\\linewidth]{${4:example-image}}\n  \\caption{${5:Example figure}}\n\\end{figure}\n$0" "Figures" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/figures" nil nil)
		       ("\\E" "\\\\Expected{${1:X}}$0" "Expected value - simple" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/expectedvalue-simple" nil nil)
		       ("\\EE" "\\\\Expected${1:_\\{X\\}}${2:[P]}\\{${3:X}\\}${4:[X \\\\sim \\\\Prob\\{X\\}]}" "Expected value with optional parameters" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/expectedvalue" nil nil)
		       ("al" "\\begin{align$1}\n  $2\n\\end{align$1}\n$0" "Math align environment" nil nil nil "/home/kozielki/.config/emacs/snippets/latex-mode/alignenvironment" nil nil)))


;;; Do not edit! File generated at Thu Sep 19 10:56:43 2024
