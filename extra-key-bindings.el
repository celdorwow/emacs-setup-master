;; Toggle Case Sensitive Search
(global-set-key (kbd "C-c M-s") 'toggle-case-fold-search)

;; scrolling by 1 line with holding cursor in the line
(global-set-key [M-up] (lambda () (interactive) (scroll-up 1)))
(global-set-key [M-down] (lambda () (interactive) (scroll-down 1)))

;; Complete file name
(fset 'my-complete-file-name
      (make-hippie-expand-function '(try-complete-file-name-partially
				     try-complete-file-name)))
(global-set-key "\M-/" 'my-complete-file-name)

;; Macro to comment one line in LaTeX-mode
(fset 'LaTeX-comment-whole-line
   (kmacro-lambda-form [?\C-e ?\C-  ?\C-a ?\C-c ?\;] 0 "%d"))

;; Undo
(global-unset-key "\C-z")
(global-set-key "\C-z" 'advertised-undo)
