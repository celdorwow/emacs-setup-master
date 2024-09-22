;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("we" ":weapon:" "Weapon" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/weapon" nil nil)
		       ("wa" ":war ash:" "War Ash" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/warash" nil nil)
		       ("up" ":upgrading:" "Upgrading materials" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/upgradingaterials" nil nil)
		       ("te" ":tear:" "Tears" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/tears" nil nil)
		       ("ta" ":talisman:" "Talisman" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/talisman" nil nil)
		       ("alpha" "${1:$$(yas-choose-value '(\n\"\\\\\\\\alpha\"\n\"\\\\\\\\beta\"\n\"\\\\\\\\gamma\"\n\"\\\\\\\\delta\"\n\"\\\\\\\\epsilon\"\n\"\\\\\\\\zeta\"\n\"\\\\\\\\eta\"\n\"\\\\\\\\theta\"\n\"\\\\\\\\iota\"\n\"\\\\\\\\kappa\"\n\"\\\\\\\\lambda\"\n\"\\\\\\\\mu\"\n\"\\\\\\\\nu\"\n\"\\\\\\\\omicron\"\n\"\\\\\\\\pi\"\n\"\\\\\\\\rho\"\n\"\\\\\\\\sigma\"\n\"\\\\\\\\tau\"\n\"\\\\\\\\upsilon\"\n\"\\\\\\\\phi\"\n\"\\\\\\\\chi\"\n\"\\\\\\\\psi\"\n\"\\\\\\\\omega\"\n))}$0" "Symbol alpha" nil
			("greeks")
			nil "/home/kozielki/.config/emacs/snippets/org-mode/symbol-alpha" "C-c w s" nil)
		       ("sa" ":spirit ash:" "Spirit Ash" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/spiritash" nil nil)
		       ("sp" ":spell:" "Spell" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/spell" nil nil)
		       ("gr" ":grace:" "Site of Grace" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/siteofgrace" nil nil)
		       ("sh" ":shield:" "Shield" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/shield" nil nil)
		       ("ru" ":runes:" "Runes" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/runes" nil nil)
		       ("qu" ":quest:" "Quest" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/quest" nil nil)
		       ("pl" ":place:" "Place" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/place" nil nil)
		       ("np" ":npc:" "NPC" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/npcs" nil nil)
		       ("me" "Zbigniew Kozieł" "Write my name" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/me" nil nil)
		       ("ma" ":map:" "Map" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/map" nil nil)
		       ("tar" "<<${1:target}>>$0" "Link target" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/linktarget" nil nil)
		       ("kw" "=$1=" "Key word" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/keyword" nil nil)
		       ("//" "/$1/$0" "Italics" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/italics" nil nil)
		       ("in" "\\($1\\)$0" "Inline mathmode" nil
			("math")
			nil "/home/kozielki/.config/emacs/snippets/org-mode/inline" nil nil)
		       ("ic" ":incantation:" "Incantation" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/incantation" nil nil)
		       ("fl" ":flask:" "Flask" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/flask" nil nil)
		       ("cr" ":crafting:" "Crafting" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/crafting" nil nil)
		       ("co" ":consumable:" "Consumable" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/consumable" nil nil)
		       ("ar" ":armour:" "Armour" nil nil nil "/home/kozielki/.config/emacs/snippets/org-mode/armour" nil nil)
		       ("al" "${1:\\$\\$$$(yas-choose-value '(\"\\\\\\\\[\" \"$$\"))}\n\\begin{align}\n    $0 \\\\\n    &= \n\\end{align}\n${1:$(if (string= yas-text \"\\\\\\\\[\") \"\\\\\\\\]\" \"$$\")}" "Align environment" nil
			("align")
			nil "/home/kozielki/.config/emacs/snippets/org-mode/align" nil nil)))


;;; Do not edit! File generated at Thu Sep 19 10:56:43 2024
