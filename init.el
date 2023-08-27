;; *** Load custom files
(let ((folder "~/.config/emacs/")
      (packages '("basicinit.el"
		  "packages.el"
		  "setup-org.el"
		  "setup-auctex.el"
		  "setup-lsp.el"
		  "extra-key-bindings.el"
		  )))
  (dolist (x packages)
    (let ((file (concat folder x)))
      (load file)))); "setup-treemacs.el"


;;; Keep this as the last entity
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(atom-one-dark))
 '(custom-safe-themes
   '("171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" default))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(auctex company pdf-tools org-bullets smooth-scrolling visual-regexp grip-mode org-roam multiple-cursors multi-cursors projectile perspective rainbow-delimiters doom-themes all-the-icons doom-modeline ivy-prescient counsel ivy-rich which-key use-package tablist mermaid-mode markdown-toc markdown-preview-mode latex-preview-pane ivy edit-indirect csv-mode csv auto-complete-auctex auctex-lua auctex-latexmk atom-one-dark-theme))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVuSansMono Nerd Font" :foundry "PfEd" :slant normal :weight regular :height 120 :width normal))))
 '(vr/group-0 ((t (:background "blue3" :foreground "white"))))
 '(vr/group-1 ((t (:background "chartreuse4" :foreground "white"))))
 '(vr/group-2 ((t (:background "sienna4" :foreground "white"))))
 '(vr/match-0 ((t (:background "steelblue4" :foreground "white"))))
 '(vr/match-1 ((t (:background "dodgerblue4" :foreground "white")))))
(put 'downcase-region 'disabled nil)
