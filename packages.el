(provide 'packages)

;; Installed packages:
; coffee-mode
; lua-mode
; markdown-mode
; org
; paredit-mode
; puppet-mode
; python-mode

(require 'package)
(package-initialize)

(eval-after-load "package"
  '(progn
    (add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
    (add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)))
