;;; ffe-packages.el --- packages control via straight.el

;;; Code:

;; Also prevents "changed file on disk" dialogs while installing libraries
(global-auto-revert-mode t)

;; Initialize straight.el
(let ((bootstrap-file (concat user-emacs-directory "straight/repos/straight.el/bootstrap.el"))
      (bootstrap-version 3))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(defun ffe--req (&rest packages)
  "Fetch and require PACKAGES."

  (let ((loader (lambda (pack)
		  (straight-use-package pack)
		  (require pack))))
    (mapc loader packages)))

(provide 'ffe-packages)
;;; ffe-packages.el ends here
