(provide 'x11)
(global-hl-line-mode 1)

(global-font-lock-mode 1)

(set-face-attribute 'mode-line nil :box nil :background "orange")
(make-face-unbold 'font-lock-warning-face)

(make-face 'font-lock-fixme-face)
(set-face-foreground 'font-lock-fixme-face "black")
(set-face-background 'font-lock-fixme-face "yellow")
(add-hook 'font-lock-mode-hook
	  (lambda () (font-lock-add-keywords
		      nil '(("\\<\\(FIXME\\|TODO\\|BUG\\|XXX\\)\\>"
			     (0 'font-lock-fixme-face prepend))))))
(add-hook 'diff-mode-hook
	  (lambda ()
	    (set-face-foreground 'diff-added-face "darkblue")
	    (set-face-foreground 'diff-changed-face "royalblue")
	    (set-face-foreground 'diff-removed-face "firebrick4l")))

(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/zenburn-emacs/")
;; Zenburn theme: https://github.com/bbatsov/zenburn-emacs
(load-theme 'zenburn t)
