(provide 'modules)

(add-to-list 'load-path "~/.emacs.d/modules/")

;; Puppet
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")

;; Forth
(require 'forth-mode)
(add-to-list 'auto-mode-alist '("\\.fs$" . forth-mode))

;; Python
(autoload 'python-mode "python-mode" "Python Mode." t)

;; Clojure
(require 'clojure-mode)
(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)

;; Template Toolkit
(require 'tt-mode)
(add-to-list 'auto-mode-alist '("\\.tt$" . tt-mode))

;; MPC
(require 'mpc)

;; lua
(autoload 'lua-mode "lua-mode")
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-hook 'lua-mode-hook (lambda () (setq lua-indent-level 2)))

;; Paredit and enable it by default for clojure-mode
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
