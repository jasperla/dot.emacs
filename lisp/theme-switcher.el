;;; Emacs themes switcher, invoke with C-x t
;;; Cycles through a pre-defined list of themes, wrapping around when
;;; reaching the end of the list.
(provide 'theme-switcher)

(global-set-key (kbd "C-x t") 'switch-theme)

(setq themes '(flatland-black flatland monokai soothe ample-zen tango hipster))
(setq current-theme 0)

(defun lookup-theme (index)
  "Lookup a theme based on it's index"
  (nth index themes))

(defun switch-theme ()
  "Cycle through a pre-selected list of themes"
  (interactive)
  (let
      ((next (+ current-theme 1)))
    (when (> next (- (length themes) 1))
	(setq next 0))
    (load-theme (lookup-theme next) t)
    (message "Switched to %s" (lookup-theme next))
    (tool-bar-mode -1) ; Some themes reset the toolbar.
    (setq current-theme next)))
