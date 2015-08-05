(provide 'org-mode)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

; Tab get's used for other stuff too, so just rebind.
(global-set-key (kbd "<C-tab>") 'org-cycle)

; Accessible via C-c C-t, keywords marked with "@" will note the time
(setq org-todo-keywords
      ; General states
      '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
	; Bugs and reports
	(sequence "REPORTED(r)" "VERIFY(v)" "POSTPONED(p)" "|" "FIXED(f)")
	; Projects
	(sequence "STARTED(s)" "|" "COMPLETED(c@)")
	(sequence "WONTFIX(w)")))

; Quicker way of hopping to the next heading than C-C C-[np]
(global-set-key "\C-cn" 'outline-next-visible-heading)
(global-set-key "\C-cp" 'outline-previous-visible-heading)

; Change the color of prioritized items
(setq org-priority-faces '((?A . (:foreground "red" :weight "bold"))
			   (?B . (:foreground "yellow"))
			   (?C . (:foreground "green"))))

(setq org-directory "/home/jasper/org/")
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
  '(("t" "Todo" entry (file+headline (concat org-directory "/todo.org") "Tasks")
         "** TODO %?\n  %i  %T\n  %a")
    ("n" "Note" entry (file+headline (concat org-directory "/notes.org") "Notes")
         "** %?\n  %i  %T\n  %a")
    ("n" "Private" entry (file+headline (concat org-directory "/private-notes.org") "Notes")
         "** %?\n  %i  %T\n  %a")
    ("m" "Todo M:Tier" entry (file+headline (concat org-directory "/mtier_todo.org") "Tasks")
         "** TODO %?\n  %i  %T\n  %a")))


(org-babel-do-load-languages
 'org-babel-load-languages
  '( (perl . t)
     (ruby . t)
     (sh . t)
     (python . t)
     (clojure . t)
     (emacs-lisp . t)
   ))

; In-document syntax highlighting (install htmlize for html export highlighting)
(setq org-src-fontify-natively t)

(setq org-babel-ruby-command "ruby22")
