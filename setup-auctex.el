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

(defun LaTeX-env-tabularray (environment)
  "Insert ENVIRONMENT with position and column specifications.
Just like array and tabular."
  (let ((pos (and LaTeX-default-position ; LaTeX-default-position can
                                        ; be nil, i.e. do not prompt
                  (TeX-read-string "(Optional) Outer: " LaTeX-default-position)))
        (fmt (TeX-read-string
              (if (string= LaTeX-default-format "")
                  "Inner: "
                (format "Inner (default %s): " LaTeX-default-format))
              nil nil
              (if (string= LaTeX-default-format "")
                  nil
                LaTeX-default-format)) ))
    (setq LaTeX-default-position pos)
    (setq LaTeX-default-format fmt)
    (LaTeX-insert-environment environment
                              (concat
                               (unless (zerop (length pos))
                                 (concat LaTeX-optop pos LaTeX-optcl))
                               (concat TeX-grop fmt TeX-grcl)))
    (LaTeX-item-array t)))


;; Electric indent mode
(defun zbg/remove-electric-indend-mode ()
  (electric-indent-local-mode -1))

(defun zbg/push-unless (item envlist)
  (unless (member item envlist) (push item envlist)))



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
			      '("LaTeXmk [lualatex]" "latexmk -lualatex -synctex=1 -interaction=nonstopmode %s" TeX-run-TeX nil t
				:help "Run Latexmk with lualatex on file")
			      TeX-command-list))
		   (lambda ()
			     (push
			      '("Force LaTeXmk [lualatex]" "latexmk -gg -lualatex -synctex=1 -interaction=nonstopmode %s" TeX-run-TeX nil t
				:help "Force to run Latexmk with lualatex on file")
			      TeX-command-list))
		   (lambda ()
			     (push
			      '("LaTeXmk [pdflatex]" "latexmk -pdflatex -synctex=1 -interaction=nonstopmode %s" TeX-run-TeX nil t
				:help "Force to run Latexmk with lualatex on file")
			      TeX-command-list))
		   (lambda ()
			     (push
			      '("Force LaTeXmk [pdflatex]" "latexmk -gg -pdflatex -synctex=1 -interaction=nonstopmode %s" TeX-run-TeX nil t
				:help "Force to run Latexmk with lualatex on file")
			      TeX-command-list))
		   (lambda () (setq TeX-command-default "LaTeXmk [lualatex]"))
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
		   (lambda () (setq TeX-debug-warning t
				    TeX-debug-bad-boxes t))
		   (lambda () (define-key LaTeX-mode-map (kbd "<f5>")
				(lambda ()
				  "Save the buffer and run `TeX-command-run-all`."
				  (interactive)
				  (let (TeX-save-query) (TeX-save-document (TeX-master-file)))
				  (TeX-command-run-all nil))))
		   ;; Add support for tabularray 
		   (lambda () (cl-pushnew '("tblr" LaTeX-indent-tabular) LaTeX-indent-environment-list :test #'equal))
		   (lambda () (cl-pushnew '("longtblr" LaTeX-indent-tabular) LaTeX-indent-environment-list :test #'equal))
		   (lambda () (cl-pushnew '("talltblr" LaTeX-indent-tabular) LaTeX-indent-environment-list :test #'equal))
		   (lambda () (LaTeX-add-environments '("tblr" LaTeX-env-tabularray)))
		   (lambda () (LaTeX-add-environments '("talltblr" LaTeX-env-tabularray)))
		   (lambda () (LaTeX-add-environments '("longtblr" LaTeX-env-tabularray)))
		   ))
  (add-hook 'LaTeX-mode-hook command))


;; auto-closing parentheses in LaTeX-math-mode
(add-hook 'LaTeX-math-mode-hook (lambda () (electric-pair-local-mode 'toggle)))


;; Keyboard assign to the function above
(add-hook 'TeX-fold-mode-hook (lambda () (define-key TeX-fold-mode-map (kbd "C-c C-o C-k") 'zbg/latex-fold-any)))


;;
;; Keyboard assign to the TeX-command-run-all
