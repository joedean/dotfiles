;; fix S-<up> in xterm
;; why:  http://lists.gnu.org/archive/html/help-gnu-emacs/2011-05/msg00211.html
(if (equal "xterm" (tty-type))
    (define-key input-decode-map "\e[1;2A" [S-up]))
(defadvice terminal-init-xterm (after select-shift-up activate)
  (define-key input-decode-map "\e[1;2A" [S-up]))

;; use spaces instead of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width        4)
(setq         tab-stop-list    (number-sequence 4 120 4))

;; trim trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Don't show trailing whitespace in shell mode
(add-hook 'shell-mode-hook
          (lambda ()
            (linum-mode 0)
            (setq show-trailing-whitespace nil)))

;; Setup window color attributes
(when window-system
  (set-background-color "black")
  (set-foreground-color "gray"))

;; show columns and time in modeline
(column-number-mode 1)

(setq display-time-day-and-date t
      display-time-24hr-format  t)
(display-time)

;; move backups into .emacs.d/backups
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backups" user-emacs-directory))))

(setenv "EDITOR" "emacs24")

(autoload 'bash-completion-dynamic-complete
  "bash-completion"
  "BASH completion hook")
(add-hook 'shell-dynamic-complete-functions
  'bash-completion-dynamic-complete)
(add-hook 'shell-command-complete-functions
  'bash-completion-dynamic-complete)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

;; Setup default shells
(let ((default-directory "/home/joe/"))
  (shell "*home*"))
(let ((default-directory "/home/joe/ws/rental_express/"))
  (shell "*server*")
  (shell "*git*"))
