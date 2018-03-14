;;; ffe-vcs.el --- git and other vcs support

;;; Code:

(require 'ffe-packages)

(ffe--req 'magit 'evil-magit 'magithub)

(magithub-feature-autoinject t)
(global-magit-file-mode t)

(general-def
  "C-x g" 'magit-status)

(provide 'ffe-vcs)
;;; ffe-vcs.el ends here
