;; === Supporting functions === ;;

;; Custom function to fold custom environments
(defun zbg/latex-fold-any ()
  "An interactive function folds custom environments given by
name. It is loaded with TeX-fold-mode. Starred environments are
automatically included."
  (interactive)
  (let ((env (read-from-minibuffer "Which environment: ")))
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward (format "begin{%s\\*?}" env) nil t)
        (TeX-fold-env)))))


;; Electric indent mode
(defun zbg/remove-electric-indend-mode ()
  (electric-indent-local-mode -1))




;; === Setting AUCTeX == ;;

;; Add REFTEX to AUCTEX on startup
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'lalex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode


;; Disable auto-indentation when pressing [ENTER]
;;(add-hook 'LaTeX-mode-hook 'zbg/remove-electric-indend-mode)
;;(add-hook 'lalex-mode-hook 'zbg/remove-electric-indend-mode)

;; Autosave on
(setq TeX-auto-save t)


;; Set AUCTeX to ask for the main file but do not save it in the file
(setq TeX-parse-self t)
(setq-default TeX-master 'shared)


;; Math Mode
(setq LaTeX-math-list '((?\C-w "Wec\{\}" "" nil)
                        (?\C-v "Bec\{\}" "" nil)))

;; Setup AUCTeX on load
(dolist (command '((lambda ()
			     (push
			      '("LaTeXmk" "latexmk -lualatex -synctex=1 -interaction=nonstopmode %s" TeX-run-TeX nil t
				:help "Run Latexmk on file")
			      TeX-command-list))
		   (lambda ()
			     (push
			      '("Force LaTeXmk" "latexmk -gg -lualatex -synctex=1 -interaction=nonstopmode %s" TeX-run-TeX nil t
				:help "Force to run Latexmk on file")
			      TeX-command-list))
		   (lambda () (setq TeX-command-default "LaTeXmk"))
		   (lambda () (visual-line-mode t))
		   (lambda () (setq font-latex-fontify-script nil))
		   (lambda () (rainbow-delimiters-mode))
		   (lambda () (hl-line-mode))
		   (lambda () (multiple-cursors-mode))
		   (lambda () (setq line-spacing 0.2))
		   (lambda () (local-set-key (kbd "C-c C-;") 'LaTeX-comment-whole-line))
		   (lambda () (setq TeX-indent-open-delimiters "["
				    TeX-indent-close-delimiters "]"))
		   (lambda () (setq reftex-ref-style-default-list '("Default" "Hyperref" "Cleveref" "AMSmath")))
		   ))
  (add-hook 'LaTeX-mode-hook command))


;; auto-closing parentheses in LaTeX-math-mode
(add-hook 'LaTeX-math-mode-hook (lambda () (electric-pair-local-mode 'toggle)))


;; Keyboard assign to the function above
(add-hook 'TeX-fold-mode-hook (lambda () (define-key TeX-fold-mode-map (kbd "C-c C-o C-k") 'zbg/latex-fold-any)))
