(load "~/.joedev/dotfiles/emacs.d/vendor/emacs-bash-completion/bash-completion.el")
(load "~/ws/scripts/emacs-lisp/osm.el")

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;;(require 'erc)
;;(require 'magit)
