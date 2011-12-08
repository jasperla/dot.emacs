(provide 'modules)

;; Puppet
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")

;; Forth
(load "~/.emacs.d/modules/gforth.el")
(load "~/.emacs.d/modules/gforth.el")
(add-to-list 'auto-mode-alist '("\\.fs$" . forth-mode))

;; Python
(autoload 'python-mode "python-mode" "Python Mode." t)

;; Clojure
(load "~/.emacs.d/modules/clojure-mode.el")

;; Template Toolkit
(load "~/.emacs.d/modules/tt-mode.el")
(add-to-list 'auto-mode-alist '("\\.tt$" . tt-mode))

;; Haskell
(load "~/.emacs.d/modules/haskell/haskell-site-file")

;; MPC
(load "~/.emacs.d/modules/mpc")

;; lua
(autoload 'lua-mode "lua-mode")
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-hook 'lua-mode-hook (lambda () (setq lua-indent-level 2)))
