;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Loading stuffs!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq load-path (cons "~/.emacs.d/" load-path))
(setq load-path (cons "~/.emacs.d/vendor/" load-path))
(setq load-path (cons "~/.emacs.d/ingrid/" load-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mostly standard stuff.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Shows directories and supplies auto complete in the minibuffer.
(ido-mode t)

;; Show column and line numbers.
(setq line-number-mode t)
(setq column-number-mode t)

;; Replaces tab functionality with 4 spaces;
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; Trim buffer on save.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto-save and back up options.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Saves all tilde files to a designated directory.
(add-to-list 'backup-directory-alist (cons "." "~/.emacs.d/backups/"))

;; Settings for backup files.
(setq delete-old-versions t
      kept-new-versions 100
      kept-old-versions 100
      version-control t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Language specific stuffs.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set indentation to 2 spaces for js mode.
(setq js-indent-level 2)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global-ish stuff.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; There can only be one of these.
(custom-set-variables
  '(python-checker-command "pychecker.sh")
  '(py-pychecker-command-args (quote ("")))
  '(python-check-command "pychecker.sh")
  )

;; For some reason they changed the keybinding in Emacs 24, this does not override anything in python mode.
(global-set-key "\C-c\C-w" 'python-check-command)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
