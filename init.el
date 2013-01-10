(add-to-list 'load-path "~/.emacs.d")

(when window-system
  (require 'x11))
(require 'modules)
(require 'utils)
(require 'keybindings)
(require 'layout)
(require 'c-mode-sane)
(require 'packages)


