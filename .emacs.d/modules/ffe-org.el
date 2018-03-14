;;; ffe-org.el --- org-mode setup and tweaks

;;; Code:

(require 'ffe-packages)

(ffe--req 'git)

(defun org-git-version ()
  "The Git version of org-mode.
  Inserted by installing org-mode or when a release is made."

  (let ((git-repo (expand-file-name
                   "straight/repos/org/" user-emacs-directory)))
    (string-trim
     (git-run "describe"
              "--match=release\*"
              "--abbrev=6"
              "HEAD"))))

(defun org-release ()
  "The release version of org-mode.
  Inserted by installing org-mode or when a release is made."

  (let ((git-repo (expand-file-name
                   "straight/repos/org/" user-emacs-directory)))
    (string-trim
     (string-remove-prefix
      "release_"
      (git-run "describe"
               "--match=release\*"
               "--abbrev=0"
               "HEAD")))))

(provide 'org-version)

(straight-use-package 'org-plus-contrib)
(require 'org)

;; If you try to insert a heading in the middle of an entry, don't
;; split it in half, but instead insert the new heading after the
;; end of the current entry.
(setq org-insert-heading-respect-content t)

;; Indent subsections.
(add-hook 'org-mode-hook #'org-indent-mode)

(provide 'ffe-org)
;;; ffe-org.el ends here
