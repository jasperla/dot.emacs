(provide 'utils)

;; -----------------------------------------------------------------
;; Various util hooks and functions
;; -----------------------------------------------------------------
(defun tabs (width)
  (interactive "ntab width: ")
  (setq tab-width width))

(defun width (cols)
  (interactive "ncolumns: ")
  (set-frame-width nil cols)
  (set-fill-column (- cols 0)))

(defun copy-line ()
  (interactive)
  (save-excursion
    (copy-region-as-kill (point-at-bol) (point-at-eol))
    (forward-line)
    (open-line 1)
    (yank)))

(defun indent-or-complete ()
  "Complete if point is at end of a word, otherwise indent line."
  (interactive)
  (if (looking-at "\\>")
      (dabbrev-expand nil)
    (indent-for-tab-command)))

(defun programming-mode-keys ()
  (local-set-key [return] 'newline-and-indent)
  (local-set-key [tab] 'indent-or-complete))

(add-hook 'text-mode-hook
          (lambda () (local-set-key [tab] 'indent-or-complete)))
(add-hook 'lisp-mode-hook 'programming-mode-keys)
(add-hook 'emacs-lisp-mode-hook 'programming-mode-keys)
(add-hook 'scheme-mode-hook 'programming-mode-keys)
(add-hook 'c-mode-hook 'programming-mode-keys)
(add-hook 'c++-mode-hook 'programming-mode-keys)
(add-hook 'php-mode-hook 'programming-mode-keys)
(add-hook 'perl-mode-hook 'programming-mode-keys)

(defun in-other-window ()
  (split-window-vertically)
  (other-window 1))

;; Change builtin colors to 'green', as bold blue is unreadable on black
; (with zenburn)
;(set-face-foreground 'font-lock-builtin-face "green")
