(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'packages)
(require 'modules)
(require 'utils)
(require 'keybindings)
(require 'layout)
(require 'c-mode-sane)
(require 'org-mode)
(when window-system
  (require 'x11))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
