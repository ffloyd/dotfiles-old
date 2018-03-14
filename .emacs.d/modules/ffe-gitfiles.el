;;; ffe-gitfiles --- .gitignore and other gitfiles support

;;; Code:

(require 'ffe-packages)

(ffe--req 'gitignore-mode 'gitconfig-mode 'gitattributes-mode)

(add-hook 'gitignore-mode-hook
          (lambda ()
            (setq-local company-backends '(company-files))))

(provide 'ffe-gitfiles)
;;; ffe-gitfiles.el ends here
