(provide 'x11)

(require 'theme-switcher)
(load-theme 'flatland t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

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

(setq sml/no-confirm-load-theme t)
(sml/setup)
(setq sml/theme 'dark)
(add-to-list 'sml/replacer-regexp-list '("^/usr/ports/" ":P:") t)
(add-to-list 'sml/replacer-regexp-list '("^/usr/src/" ":S:") t)


