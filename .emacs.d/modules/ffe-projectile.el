;;; ffe-projectile.el --- project management

;;; Code:

(require 'ffe-packages)

(ffe--req 'projectile 'counsel-projectile)

(counsel-projectile-mode)

(provide 'ffe-projectile)
;;; ffe-projectile.el ends here
