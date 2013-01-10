(provide 'packages)

;; Installed packages:
; coffee-mode
; lua-mode
; markdown-mode
; paredit-mode
; puppet-mode
; python-mode

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
