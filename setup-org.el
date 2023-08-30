;; Org Mode settngs
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(use-package org
  :hook
  (org-mode . (lambda ()
                (org-indent-mode 1)
                (visual-line-mode 1)
                (require 'ox-md nil t)))
  :config
  (setq org-ellipsis " ▾")
  (setq org-directory "~/Documents/emacs-org")
  (setq org-agenda-files (concat org-directory "/tasks.org"))
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.25))
  :bind (:map org-mode-map
	      ("C-c v" . 'pcomplete-list)
	      ("C-S-<right>" . nil)
	      ("C-S-<left>" . nil)))
;; org-hide-emphasis-markers t))
(use-package org-bullets
  :hook (org-mode . org-bullets-mode)
  :config (setq org-bullets-bullet-list '("◉" "○" "◎" "○" "☉" "◌")))
;; Set faces for heading levels
(dolist (face '((org-level-1 . 1.5)
                (org-level-2 . 1.3)
                (org-level-3 . 1.2)
                (org-level-4 . 1.1)
                (org-level-5 . 1.0)
                (org-level-6 . 1.0)
                (org-level-7 . 1.0)
                (org-level-8 . 1.0)))
  (set-face-attribute (car face) nil :font "DejaVu Sans Book" :weight 'regular :height (cdr face)))
;; Replace list hyphen with dot
(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
;; Custom hyperref template
(customize-set-value 'org-latex-hyperref-template "\\hypersetup{\n  colorlinks,\n  pdfauthor={%a},\n  pdftitle={%t},\n  pdfkeywords={%k},\n  pdfsubject={%d},\n  pdfcreator={%c},\n  pdflang={%L},\n}\n")


;; Organasing notes
(use-package org-roam
  :ensure t
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n i" . org-roam-node-insert))
  :config
  (progn
    (setq org-roam-directory (file-truename "~/Documents/org-roam"))
    (org-roam-db-autosync-mode)))
