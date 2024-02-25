;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("we" ":weapon:" "Weapon" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/weapon" nil nil)
		       ("wa" ":war ash:" "War Ash" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/warash" nil nil)
		       ("ta" ":talisman:" "Talisman" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/talisman" nil nil)
		       ("alpha" "${1:$$(yas-choose-value '(\n\"\\\\\\\\alpha\"\n\"\\\\\\\\beta\"\n\"\\\\\\\\gamma\"\n\"\\\\\\\\delta\"\n\"\\\\\\\\epsilon\"\n\"\\\\\\\\zeta\"\n\"\\\\\\\\eta\"\n\"\\\\\\\\theta\"\n\"\\\\\\\\iota\"\n\"\\\\\\\\kappa\"\n\"\\\\\\\\lambda\"\n\"\\\\\\\\mu\"\n\"\\\\\\\\nu\"\n\"\\\\\\\\omicron\"\n\"\\\\\\\\pi\"\n\"\\\\\\\\rho\"\n\"\\\\\\\\sigma\"\n\"\\\\\\\\tau\"\n\"\\\\\\\\upsilon\"\n\"\\\\\\\\phi\"\n\"\\\\\\\\chi\"\n\"\\\\\\\\psi\"\n\"\\\\\\\\omega\"\n))}$0" "Symbol alpha" nil
			("greeks")
			nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/symbol-alpha" "C-c w s" nil)
		       ("sa" ":spirit ash:" "Spirit Ash" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/spiritash" nil nil)
		       ("qu" ":quest:" "Quest" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/quest" nil nil)
		       ("pl" ":place:" "Place" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/place" nil nil)
		       ("me" "Zbigniew Kozieł\n" "Write my name" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/me" nil nil)
		       ("tar" "<<${1:target}>>$0" "Link target" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/linktarget" nil nil)
		       ("in" "\\($1\\)$0" "Inline mathmode" nil
			("math")
			nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/inline" nil nil)
		       ("fl" ":flask:" "Flask" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/flask" nil nil)
		       ("cr" ":crafting:" "Crafting" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/crafting" nil nil)
		       ("ar" ":armour:" "Armour" nil nil nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/armour" nil nil)
		       ("al" "${1:\\$\\$$$(yas-choose-value '(\"\\\\\\\\[\" \"$$\"))}\n\\begin{align}\n    $0 \\\\\n    &= \n\\end{align}\n${1:$(if (string= yas-text \"\\\\\\\\[\") \"\\\\\\\\]\" \"$$\")}" "Align environment" nil
			("align")
			nil "c:/Users/zbkoz/AppData/Roaming/.emacs.d/snippets/org-mode/align" nil nil)))


;;; Do not edit! File generated at Thu Nov  2 11:37:08 2023
