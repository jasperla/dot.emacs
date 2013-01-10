(provide 'modules)

;; Markdown
(setq auto-mode-alist (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

(add-hook 'lua-mode-hook (lambda () (setq lua-indent-level 2)))

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
