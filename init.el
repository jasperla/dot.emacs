(add-to-list 'load-path "~/.emacs.d")

(require 'modules)
(require 'utils)
(require 'keybindings)
(require 'layout)
(require 'c-mode-sane)
(require 'packages)
(when window-system
  (require 'x11))
