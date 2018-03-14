;;; ffe-modeline.el --- modeline configuration

;;; Code:

(require 'ffe-packages)

(ffe--req 'spaceline)

(require 'spaceline-config)

(setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
(spaceline-spacemacs-theme)

(provide 'ffe-modeline)
;;; ffe-modeline.el ends here
