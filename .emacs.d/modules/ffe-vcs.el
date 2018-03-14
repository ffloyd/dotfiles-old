;;; ffe-vcs.el --- git and other vcs support

;;; Code:

(require 'ffe-packages)

(ffe--req 'magit 'evil-magit)

(global-magit-file-mode t)

;; Temporary disable because of bugs
;; (ffe--req 'magithub)
;; (magithub-feature-autoinject t)

(general-def
  "C-x g" 'magit-status)

(provide 'ffe-vcs)
;;; ffe-vcs.el ends here
