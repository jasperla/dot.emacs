(provide 'modules)

(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/vendor/")

;; Puppet
(require 'puppet-mode)
(add-to-list 'auto-mode-alist '("\\.pp\\'" . puppet-mode))

;; Forth
(require 'forth-mode)
(add-to-list 'auto-mode-alist '("\\.fs$" . forth-mode))

;; Python
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python3.2" . python-mode))

;; Clojure
(require 'clojure-mode)
(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)

;; Template Toolkit
(require 'tt-mode)
(add-to-list 'auto-mode-alist '("\\.tt$" . tt-mode))

;; Markdown
(require 'markdown-mode)
(setq auto-mode-alist (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; Org-Mode
;(add-to-list 'load-path "~/.emacs.d/vendor/org/lisp/")
;(add-to-list 'load-path "~/.emacs.d/vendor/org/")
;(require 'org-install)
;(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Coffee-Mode
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; MPC
(require 'mpc)

;; lua
(require 'lua-mode)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-hook 'lua-mode-hook (lambda () (setq lua-indent-level 2)))

;; Paredit and enable it by default for clojure-mode
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(define-key clojure-mode-map "{" 'paredit-open-brace)
(define-key clojure-mode-map "}" 'paredit-close-brace)

;; Zenburn theme
(require 'color-theme)
;(require 'zenburn)
(require 'candy-chain)

;; Erlang
(setq load-path (cons  "/usr/local/lib/erlang/lib/tools-2.6.7/emacs" load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang)
(add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))
