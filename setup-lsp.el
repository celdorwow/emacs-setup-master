;; setup-lsp.el

;; Company is a part of the lsp system 
(use-package company
  :hook (
	 (LaTeX-mode . company-mode)
	 (latex-mode . company-mode)))

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c M-l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (LaTeX-mode . lsp)
	 (latex-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui
  :commands lsp-ui-mode)
;; if you are ivy user
(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)
;; which-key integration
(use-package which-key
  :config
  (which-key-mode))

;; The path to lsp-mode needs to be added to load-path as well as the
;; path to the `clients' subdirectory.
(add-to-list 'load-path (expand-file-name "lib/lsp-mode" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib/lsp-mode/clients" user-emacs-directory))

;; Additional settings:
;; Source: https://emacs-lsp.github.io/lsp-mode/page/performance/
;; ---
;; Set threshold that works with lps, similarly to Doom/Spacemacs etc.
(setq gc-cons-threshold 100000000)
;; Amount of data read from process
(setq read-process-output-max (* 4 1024 1024)) ;; 4mb
