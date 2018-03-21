;;; spacemas-theme-use.el --- load theme

;;; Commentary:
;; Under particular circumstances, usually when running Emacs as a daemon and
;; trying to open multiple frames in the GUI and terminal, (load-theme
;; 'spacemacs-dark) does not function well (see
;; https://github.com/nashamri/spacemacs-theme/issues/78).

;; To avoid this issue, we define the function `spacemacs-theme-use' which is a
;; bit more complicated about how it goes about loading spacemacs-theme.

;; To use, do something like the following, but make sure to read the docstring
;; of `spacemacs-theme-use' first!

;; (add-to-list 'load-path "/path/to/spacemacs-theme")
;; (require 'spacemacs-theme-use)
;; (spacemacs-theme-use)

;;; Code:

(require 'spacemacs-common)

(defcustom spacemacs-theme-use-theme 'spacemacs-dark
  "The theme to use.

This should be set to either 'spacemacs-dark (the default) or
'spacemacs-light. See also the function `spacemacs-theme-use'."
  :group spacemacs-theme)

(defvar spacemacs-theme--window-loaded nil)
(defvar spacemacs-theme--terminal-loaded nil)

(defun spacemacs-theme-daemon-load (frame)
  "Function to help setup spacemacs-theme when Emacs is running as a daemon.

FRAME is used to figure out whether we're running in the terminal
or a GUI."
  (select-frame frame)
  (if (window-system frame)
      (unless spacemacs-theme--window-loaded
        (if spacemacs-theme--terminal-loaded
            (enable-theme spacemacs-theme-use-theme)
          (load-theme spacemacs-theme-use-theme t))
        (setq spacemacs-theme--window-loaded t))
    (unless spacemacs-theme--terminal-loaded
      (if spacemacs-theme--window-loaded
          (enable-theme spacemacs-theme-use-theme)
        (load-theme spacemacs-theme-use-theme t))
      (setq spacemacs-theme--terminal-loaded t))))

;;;###autoload
(defun spacemacs-theme-use ()
  "Enable/load the theme on terminals and in the GUI.

All spacemacs-theme variables should be set before calling this function.

Be careful with this function --- it is opinionated, and assumes
that the user really wants to use `spacemacs-theme-use-theme'.  Do
not use this if you have already loaded another theme or if you
want to be able to switch themes in this Emacs session.

This function also bypasses the usual warnings about themes being
able to run arbitrary Lisp code."
  (interactive)
  (if (daemonp)
      (add-hook 'after-make-frame-functions #'spacemacs-theme-daemon-load)
    (progn
      (load-theme spacemacs-theme-use-theme t)
      (if (display-graphic-p)
          (setq spacemacs-theme--window-loaded t)
        (setq spacemacs-theme--terminal-loaded t)))))

(provide 'spacemacs-theme-use)

;;; spacemacs-theme-use.el ends here
