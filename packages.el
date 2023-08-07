;; Initial settings
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Load use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-always-ensure t)


;;; Load package from here

;; Atom One Dark
(use-package atom-one-dark-theme)

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
;; The line below forces ediff to use plain window and displays menu in the echo area
;; Importantly, it eliminates poitential error with when a new frame is open by ediff
(customize-set-variable 'ediff-window-setup-function 'ediff-setup-windows-plain)

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
  (progn
    (yas-global-mode 1)
    (setq yas-key-syntaxes '(yas-longest-key-from-whitespace "()" "$"))   ;; allows exapnding inside $$ and \(\)
    (setq yas-triggers-in-field t))   ;; allows expanding inside other snippets
  )

(use-package multiple-cursors
  :bind (("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C->" . mc/mark-all-like-this)))

(use-package markdown-mode
  :hook (markdown-mode . (lambda () (visual-line-mode 1))))


;; Use keybindings
(use-package grip-mode  ;; auto rendering markdown file
  :ensure t
  :bind (:map markdown-mode-command-map
         ("g" . grip-mode)))
;; Or using hooks
;(use-package grip-mode
;  :ensure t
;  :hook ((markdown-mode org-mode) . grip-mode))

;;
(use-package evil
  :config (evil-mode 1))

;;
(use-package magit)

;;
(use-package csv-mode)

;;
(use-package pdf-tools
  :config (pdf-tools-install))


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

