(provide 'layout)

;; -----------------------------------------------------------------
;; Emacs window layout.
;; -----------------------------------------------------------------

(setq default-frame-alist
      '((horizontal-scroll-bars . nil)
        (vertical-scroll-bars . nil)
        (tool-bar-lines . 0)
        (menu-bar-lines . 0)
        (width . 80) (height . 50)
        (cursor-color . "grey37")
        (mouse-color . "black")))

(menu-bar-mode -1)
(tool-bar-mode -1)

(set-default-font "-xos4-terminus-medium-*-*-*-12-*-*-*-*-*-iso8859-2")

(blink-cursor-mode -1)
(show-paren-mode 1)
(transient-mark-mode 1)
(mouse-wheel-mode 1)
(setq ring-bell-function 'ignore)

(setq-default
  frame-title-format "%b %+ emacs"
  initial-scratch-message nil
  inhibit-startup-message t
  make-backup-files nil
  scroll-conservatively 1
  mouse-yank-at-point t
  kill-whole-line t
  dired-listing-switches "-alv"
  dired-recursive-deletes 'top
  compile-command "make "
  compilation-scroll-output t
  diff-switches "-cpu"
  show-trailing-whitespace t)

(global-set-key (kbd "TAB") 'self-insert-command)

;; Set the tab width
;(setq default-tab-width 8)
;(setq tab-width 8)

;; Turn on tabs
;(setq indent-tabs-mode t)
;(setq-default indent-tabs-mode t)

(setq column-number-mode t)

(auto-compression-mode)
(fset 'yes-or-no-p 'y-or-n-p)
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)
