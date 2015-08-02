(provide 'keybindings)

;; -----------------------------------------------------------------
;; Keybindings
;; -----------------------------------------------------------------
;; Automatically try to indent everything upon a newline
(global-set-key "\C-m" 'newline-and-indent)

(global-set-key (kbd "C-l") 'clear-shell)

(defun clear-shell ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

(global-set-key (kbd "C-c d") 'vc-diff)
(global-set-key (kbd "C-c r") 'vc-revert)

(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-h"))
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-c l") 'copy-line)
(global-set-key (kbd "M-g M-g") 'goto-line)
(global-set-key (kbd "<C-tab>") 'other-window)
(global-set-key (kbd "<f4>") 'other-window)
(global-set-key (kbd "C-M-l") 'mode-line-other-buffer)

(global-set-key (kbd "C-x C-;") 'comment-region)
(global-set-key (kbd "C-x C-:") 'uncomment-region)

(global-set-key (kbd "<f2>")
                (lambda ()
                  (interactive)
                  (delete-other-windows)))

(global-set-key (kbd "<f3>")
                (lambda ()
                  (interactive)
                  (kill-buffer nil)
                  (when (> (count-windows) 1)
                    (delete-window))))

(global-set-key (kbd "C-x r") 'revert-buffer)

(defvar grep-and-find-map (make-sparse-keymap))
(define-key global-map "\C-cf" grep-and-find-map)
(define-key global-map "\C-cfg" 'find-grep-dired)
(define-key global-map "\C-cfn" 'find-name-dired)
(define-key global-map "\C-cff" 'find-function)
(define-key global-map "\C-cfv" 'find-variable)

(defvar replace-map (make-sparse-keymap))
(define-key global-map "\C-cr" replace-map)
(define-key global-map "\C-crs" 'replace-string)
(define-key global-map "\C-crr" 'replace-regexp)
(define-key global-map "\C-crq" 'query-replace)
(define-key global-map "\C-crw" 'query-replace-regexp)

;; Only use in x11 mode, otherwise UP/DOWN/ETC fuckup
(when window-system
  (global-set-key (kbd "M-]") 'mpc-next)
  (global-set-key (kbd "M-[") 'mpc-prev)
  (global-set-key (kbd "M-P") 'mpc-pause)
  (global-set-key (kbd "M-p") 'mpc-play))
