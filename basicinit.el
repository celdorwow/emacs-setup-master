;;disable splash screen and startup message
(setq inhibit-startup-message t)
;(setq initial-scratch-message nil)


;; Resize window
(setq frame-inhibit-implied-resize t)
(setq default-frame-alist '((left . 1430) (top . 150) (width . 160) (height . 70)))
(defun x/disable-scroll-bars (frame)
  (modify-frame-parameters frame '((horizontal-scroll-bars . nil)
                                   (vertical-scroll-bars . nil))))
(if (display-graphic-p)
    (progn
      (scroll-bar-mode -1)
      (tool-bar-mode -1)
      (fringe-mode '(8 . 0))
      (add-hook 'after-make-frame-functions 'x/disable-scroll-bars))
  (progn
    (menu-bar-mode -1)
    (setq-default
     left-margin-width 1
     right-margin-width 0)))


;; Setup visible bell
(setq visible-bell t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode 1)


;; Stop creating #autosave#
;;(setq auto-save-default nil)


;;; make backup to a designated dir, mirroring the full path
(defun my-backup-file-name (fpath)
"Return a new file path of a given file path. If the new path's
directories does not exist, create them."
  (let* ((backupRootDir "~/.emacs-saves/")
	     (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath )) ;remove Windows driver letter in path, for example, “C:”
	     (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~"))))
	(make-directory (file-name-directory backupFilePath)
					(file-name-directory backupFilePath))
	backupFilePath)
  )

(setq make-backup-file-name-function 'my-backup-file-name)


;;; ESC equivalent to CTRL+GG
;; (global-set-key (kbd "<escape>") 'keyboard-escape-quit)


;;; Turn on numbers
(column-number-mode)
(global-display-line-numbers-mode t)
;; Turn off line numbers for certain modes
(dolist (mode '(shell-mode-hook
		org-mode-hook
		term-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda ()
		   (display-line-numbers-mode 0))))
