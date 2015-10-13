(provide 'modules)

;; Common extension for Puppet files is .pp
(setq auto-mode-alist (cons '("\\.pp" . puppet-mode) auto-mode-alist))

;; Augeas can be handled by sml-mode
(setq auto-mode-alist (cons '("\\.aug" . sml-mode) auto-mode-alist))

;; Markdown
(setq auto-mode-alist (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; Indent two spaces, not three.
(add-hook 'lua-mode-hook (lambda () (setq lua-indent-level 2)))

;; Coffee
(setq auto-mode-alist (cons '("\\.coffee" . coffee-mode) auto-mode-alist))
(custom-set-variables '(coffee-tab-width 2))
;;(add-hook 'coffee-mode-hook '(lambda ()
;;  (local-set-key (kbd "RET") 'newline-and-indent)))

;; Enable YASnippet
;(yas-global-mode 1)
;(setq yas/root-directory "~/emacs.d/snippets/sml-mode")
;(setq yas/root-directory "~/emacs.d/snippets/puppet-mode")

;; TODO
;; Forth
;(require 'forth-mode)
;(add-to-list 'auto-mode-alist '("\\.fs$" . forth-mode))

;(add-hook 'clojure-mode-hook 'enable-paredit-mode)
;(define-key clojure-mode-map "{" 'paredit-open-brace)
;(define-key clojure-mode-map "}" 'paredit-close-brace)

;; Clojure
;(require 'clojure-mode)
;(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)

(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))
(when (eq system-type "OpenBSD")
  (add-to-list 'interpreter-mode-alist '("ruby22" . ruby-mode)))

(add-to-list 'load-path (concat (getenv "GOPATH")  "/src/github.com/golang/lint/misc/emacs"))
(require 'golint)

(load (expand-file-name "~/.quicklisp/slime-helper.el"))
(setq inferior-lisp-program "clisp")
(setq slime-lisp-implementations
      '((sbcl ("sbcl"))
        (clisp ("clisp"))))

