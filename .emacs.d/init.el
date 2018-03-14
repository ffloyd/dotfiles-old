;;; init.el --- personal Emacs configuration

;;; Code:

(require 'subr-x)

;; Prevent package.el from running
(setq package-enable-at-startup nil)

;;
;; Module loading tooling
;;

(defvar ffe-minimum-emacs-version "25.1"
  "0xFFE does not support any Emacs version below this.")

(if (version< emacs-version ffe-minimum-emacs-version)
    (error "0xFFE requires at least Emacs %s, but you are running Emacs %s"
           ffe-minimum-emacs-version emacs-version))

(defvar ffe-directory
  (file-name-directory
   (or load-file-name buffer-file-name))
  "Path to 0xFFE directory, ~/emacs.d/ in most cases.")

(defvar ffe-modules-directory
  (and ffe-directory
       (expand-file-name "modules/" ffe-directory))
  "Path to 0xFFE modules directory, ~/emacs.d/modules/ in most cases.")

(add-to-list 'load-path ffe-modules-directory)

(defun ffe--safe-require (module)
  "Safely load a MODULE."

  (message "Loading '%s'..." module)
  (condition-case err
      (require module)
    (error (message "-- Error: %s" err)))
  (message "Loading '%s'... done." module))

(defvar ffe-first-order-modules
  '(ffe-vars ffe-packages ffe-theme ffe-core)
  "This modules will be loaded first in given order.")

(defvar ffe-defined-modules
  (mapcar
   (lambda (file)
     (intern (string-remove-suffix ".el" file)))
   (directory-files
    ffe-modules-directory nil
    "^[a-z-]+\\.el$"))
  "List of defined modules names (filenames without extensions in modules dir).")

(mapc #'ffe--safe-require ffe-first-order-modules)
(mapc #'ffe--safe-require ffe-defined-modules)

;;
;; Space keymap (extract to submodules)
;;

(defvar ffe-leader-normal "SPC"
  "0xFFE leader key for normal mode.")

(defvar ffe-leader-non-normal "C-;"
  "0xFFE leader key for non normal modes.")

(general-nmap
  :prefix ffe-leader-normal
  :non-normal-prefix ffe-leader-non-normal

  "b" '(nil :wk "Buffer")
  "bb" 'switch-to-buffer
  "bn" 'next-buffer
  "bp" 'previous-buffer
  "bk" 'kill-buffer

  "f" '(nil :wk "File")
  "ff" 'counsel-find-file
  "fr" 'counsel-recentf

  "p" '(nil :wk "Project")
  "pf" 'counsel-projectile-find-file
  "ps" 'counsel-projectile-rg

  "s" '(nil :wk "Search")
  "ss" 'swiper

  "t" '(nil :wk "Toggle")
  "tn" 'linum-mode
  "tN" 'linum-relative-toggle
  )

(provide 'init)
;;; init.el ends here
