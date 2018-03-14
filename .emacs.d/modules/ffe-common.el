;;; ffe-common.el --- common purpose enchancements

;;; Code:

(require 'ffe-packages)

;; Winum

(ffe--req 'winum)
(winum-mode)

;; Common editing

(ffe--req 'undo-tree 'rainbow-delimiters 'linum 'linum-relative)

(global-undo-tree-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Editor Config

(ffe--req 'editorconfig)

(editorconfig-mode 1)

(provide 'ffe-common)
;;; ffe-common ends here
