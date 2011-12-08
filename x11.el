(provide 'x11)
(load "~/.emacs.d/modules/highlight-current-line")

(highlight-current-line-on t)
(set-face-background 'highlight-current-line-face "#e9e9e9")

(global-font-lock-mode 1)

(dolist (font '((font-lock-builtin-face "blue")
		(font-lock-comment-face "navajowhite4")
		(font-lock-constant-face "dodgerblue")
		(font-lock-doc-face "darkgreen")
		(font-lock-function-name-face "firebrick4")
		(font-lock-keyword-face "royalblue")
		(font-lock-string-face "darkgreen")
		(font-lock-type-face "steelblue4")
		(font-lock-variable-name-face "darkblue")
		(font-lock-warning-face "red")))
  (apply 'set-face-foreground font))

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
	    (set-face-foreground 'diff-removed-face "firebrick4")))
