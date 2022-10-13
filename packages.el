;; *** PACKAGES ***************************************************************
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Use Package
(require 'package)
(require 'use-package)


;; Add Elpa, Melpa and Org to a list of archives
(setq use-package-always-ensure t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))


;; Org Mode settngs
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(use-package org
  :hook (org-mode . (lambda () (org-indent-mode 1)
			       (visual-line-mode 1)))
  :config
  (setq org-ellipsis " ▾")
  (setq org-agenda-files '("~/Documents/emacs-org/tasks.org")))
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


;; Visual Regular Expressions
(use-package visual-regexp
  :bind(("C-c r" . vr/replace)
	("C-c q" . vr/query-replace)
	("C-c m" . vr/mc-mark) ;; conflict with AUCTeX
	))


;; Which key
(use-package which-key
  :diminish which-key-mode
  :init (which-key-mode)
  :config
  (setq which-key-idle-delay 0.5))


;;; Add workspaces
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
             ("s-p" . projectile-command-map)
             ("C-c p" . projectile-command-map)))
(use-package perspective
  :bind
  ("C-x C-b" . persp-list-buffers)         ; or use a nicer switcher, see below
  :custom
  (persp-mode-prefix-key (kbd "C-c M-p"))  ; pick your own prefix key here
  :init
  (persp-mode))


(use-package ivy
  :diminish ivy-mode
  :init
  (ivy-mode 1)
  :config
  (setq ivy-initial-inputs-alist nil))
(use-package ivy-rich
  :diminish ivy-rich-mode
  :init (ivy-rich-mode 1)
  :config
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))
(use-package counsel
  :bind (("M-x" . counsel-M-x)))
(use-package swiper
  :bind (("M-s" . counsel-grep-or-swiper)))
(use-package ivy-prescient
  :after counsel
  :config
  (ivy-prescient-mode 1))
;; (setq prescient-sort-length-enable nil)))


;;; *** Highlights delimiters if in any programming mode
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))


(use-package all-the-icons)

(use-package doom-modeline
  :init (doom-modeline-mode 1))


(use-package yasnippet
  :diminish yas-global-mode
  :config
  (yas-global-mode 1))


(use-package multiple-cursors
  :bind (("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C->" . mc/mark-all-like-this)))


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


;; Use keybindings
(use-package grip-mode  ;; auto rendering markdown file
  :ensure t
  :bind (:map markdown-mode-command-map
         ("g" . grip-mode)))
;; Or using hooks
;(use-package grip-mode
;  :ensure t
;  :hook ((markdown-mode org-mode) . grip-mode))


(use-package evil
  :config (evil-mode 1))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; "Might setup later" content

;; (eval-after-load "tex"
;;   '(add-to-list 'TeX-command-list
;; 		'("LaTeXmk" "latexmk %s" TeX-run-command t t :help "Run LaTeXmk")
;; 		t))
;; (setq TeX-command-default '("LaTeXmk"))
;; (require 'auctex-latexmk)
;;(auctex-latexmk-setup)
;;(add-hook 'LaTeX-mode-hook (lambda () (setq TeX-command-default "LaTeXmk")))
;; -- Add recepies
;(setq LaTeX-math-list '((?\C-w (lambda ()(interactive) "\\Wec\{\}") "" nil)
;                        (?\C-v (lambda ()(interactive) "\\Bec\{\}") "" nil)))


;;(variable-pitch-mode 1)
  ;; https://zhangda.wordpress.com/2016/02/15/configurations-for-beautifying-emacs-org-mode/
  ;; https://mstempl.netlify.app/post/beautify-org-mode/
;; Ensure that anything that should be fixed-pitch in Org files appears that way
;(set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
;(set-face-attribute 'org-code nil   :inherit '(shadow fixed-pitch))
;(set-face-attribute 'org-table nil   :inherit '(shadow fixed-pitch))
;(set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
;(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
;(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
;(set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)

