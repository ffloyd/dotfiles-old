;;; ffe-core.el --- basic Emacs tweaks

;;; Code:

(require 'ffe-vars)
(require 'ffe-packages)

;; Custom file workaround

(unless (file-exists-p ffe-custom-file)
  (write-region "" nil ffe-custom-file))

(setq custom-file ffe-custom-file)

(add-hook 'after-init-hook #'(lambda () (load-file ffe-custom-file)))

;; Better defaults packages

(ffe--req 'better-defaults 'no-littering 'exec-path-from-shell)
(menu-bar-mode 1) ;; prevent strange window focus behaviour on macOS

;; Shut up ring bell

(setq ring-bell-function 'ignore)

;; Bigger initial frame

(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 120))

(provide 'ffe-core)
;;; ffe-core.el ends here
