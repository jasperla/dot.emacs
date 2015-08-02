(provide 'c-mode-sane)

;; -----------------------------------------------------------------
;; C-mode bits to make it behave "properly".
;; -----------------------------------------------------------------
(setq-default default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(defun new-c-mode-common-hook ()
  (c-set-style "bsd")
  (setq tab-width 8)
  (setq c-basic-offset 8)
  (setq c-label-minimum-indentation 0)

  (c-set-offset 'arglist-close 0)
  (c-set-offset 'statement-cont '*)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'statement-cont '*)
  (c-set-offset 'case-label 0)
  (c-set-offset 'knr-argdecl '*)

  (setq indent-tabs-mode t))

(add-hook 'c-mode-common-hook 'new-c-mode-common-hook)
