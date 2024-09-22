;; setup-lsp.el

;; Company is a part of the lsp system 
(use-package company
  :hook (
	 (LaTeX-mode . company-mode)
	 (latex-mode . company-mode)))

;; optionally
(use-package lsp-ui
  :commands lsp-ui-mode)
;; if you are ivy user
(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)
;; (use-package lsp-treemacs
;;   :commands lsp-treemacs-errors-list)

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
