(provide 'packages)

(require 'package)
(package-initialize)

(setq package-archives
      '(("melpa" . "http://melpa.milkbox.net/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")))

(defun install-packages ()
    "Install the pre-defined list of packages."
  (let ((packages '(hipster-theme flatland-black-theme flatland-theme
				  monokai-theme soothe-theme ample-zen-theme
				  tango-2-theme zenburn-theme slime org
				  markdown-mode inf-ruby go-mode yaml-mode
				  smart-mode-line slime-repl ruby-block
				  puppet-mode htmlize pkg-info epl dash
				  color-theme-monokai slime coffee-mode
				  lua-mode)))
    (dolist (package packages)
      (unless (package-installed-p package)
	(package-install package)))))

(defun update-packages ()
  "Update all installed packages"
  (save-window-excursion
  (package-list-packages t)
  (package-menu-mark-upgrades)
  (package-menu-execute t)))
