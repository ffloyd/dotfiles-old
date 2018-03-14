;;; ffe-sidebar.el --- sidebar config

;;; Code:

(require 'ffe-packages)

(ffe--req 'treemacs 'treemacs-projectile 'treemacs-evil)

(treemacs-follow-mode t)
(treemacs-filewatch-mode t)
(treemacs-git-mode 'extended)

(setq treemacs-header-function #'treemacs-projectile-create-header)

(general-def
  "C-x t" 'treemacs-toggle)

(provide 'ffe-sidebar)
;;; ffe-sidebar.el ends here
