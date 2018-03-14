;;; ffe-keys.el --- keybindings control

;;; Code:

(require 'ffe-packages)

(ffe--req 'evil 'which-key 'general)

(evil-mode 1)
(which-key-mode)
(general-evil-setup)

;; macOS common bindings

(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

(general-def
  "s-q" 'save-buffers-kill-terminal
  "s-v" 'yank
  "s-c" 'evil-yank
  "s-a" 'mark-whole-buffer
  "s-x" 'kill-region
  "s-w" 'delete-window
  "s-W" 'delete-frame
  "s-n" 'make-frame
  "s-z" 'undo-tree-undo
  "s-X" 'undo-tree-redo)

(provide 'ffe-keys)
;;; ffe-keys.el ends here
