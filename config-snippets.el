;;; use-package
;;;    add multiple hooks
(use-package clojure-mode
  :ensure t
  :config (add-hook 'some-mode-hook #'aggressive-indent-mode)
          (add-hook 'clojure-mode-hook #'other-thing-here)
          (yas-global-mode 1)
	  (define-key cider-mode-map (kbd "C-c SPC") 'avy-goto-word-1)
	  (define-key cider-mode-map (kbd "C-x SPC") 'avy-pop-mark))
          ;; etc.
