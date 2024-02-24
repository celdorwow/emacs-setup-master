;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("alpha" "${1:$$(yas-choose-value '(\n\"\\\\\\\\alpha\"\n\"\\\\\\\\beta\"\n\"\\\\\\\\gamma\"\n\"\\\\\\\\delta\"\n\"\\\\\\\\epsilon\"\n\"\\\\\\\\zeta\"\n\"\\\\\\\\eta\"\n\"\\\\\\\\theta\"\n\"\\\\\\\\iota\"\n\"\\\\\\\\kappa\"\n\"\\\\\\\\lambda\"\n\"\\\\\\\\mu\"\n\"\\\\\\\\nu\"\n\"\\\\\\\\omicron\"\n\"\\\\\\\\pi\"\n\"\\\\\\\\rho\"\n\"\\\\\\\\sigma\"\n\"\\\\\\\\tau\"\n\"\\\\\\\\upsilon\"\n\"\\\\\\\\phi\"\n\"\\\\\\\\chi\"\n\"\\\\\\\\psi\"\n\"\\\\\\\\omega\"\n))}$0" "Symbol alpha" nil
			("greeks")
			nil "/home/ziko/.config/emacs/snippets/org-mode/symbol-alpha" "C-c w s" nil)
		       ("me" "Zbigniew Kozieł" "Write my name" nil nil nil "/home/ziko/.config/emacs/snippets/org-mode/me" nil nil)
		       ("tar" "<<${1:target}>>$0" "Link target" nil nil nil "/home/ziko/.config/emacs/snippets/org-mode/linktarget" nil nil)
		       ("in" "\\($1\\)$0" "Inline mathmode" nil
			("math")
			nil "/home/ziko/.config/emacs/snippets/org-mode/inline" nil nil)
		       ("al" "${1:\\$\\$$$(yas-choose-value '(\"\\\\\\\\[\" \"$$\"))}\n\\begin{align}\n    $0 \\\\\n    &= \n\\end{align}\n${1:$(if (string= yas-text \"\\\\\\\\[\") \"\\\\\\\\]\" \"$$\")}" "Align environment" nil
			("align")
			nil "/home/ziko/.config/emacs/snippets/org-mode/align" nil nil)))


;;; Do not edit! File generated at Thu Oct 26 10:07:18 2023
