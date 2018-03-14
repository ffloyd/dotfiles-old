;;; ffe-theme.el --- themes and fonts configuration

;;; Code:

(require 'ffe-packages)

(set-frame-font "Iosevka 14" nil t)

(straight-use-package '(nord-theme
                        :type git
                        :host github
                        :repo "arcticicestudio/nord-emacs"
                        :branch "develop"))

(setq nord-comment-brightness 13)
(load-theme 'nord t)

(provide 'ffe-theme)
;;; ffe-theme.el ends here
