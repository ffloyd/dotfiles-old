;;; ffe-ruby.el --- ruby support

;;; Code:

(require 'ffe-packages)

;; Better ruby mode with Ripper support
(ffe--req 'enh-ruby-mode)

(add-to-list 'auto-mode-alist
             '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))

(setq enh-ruby-add-encoding-comment-on-save nil)
(setq enh-ruby-deep-indent-paren nil)

;; rbenv and bundler support
(ffe--req 'bundler 'rbenv)
(global-rbenv-mode)

;; autocompletion and REPL support
(ffe--req 'inf-ruby 'robe)
(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))

;; rspec support
(ffe--req 'rspec-mode)

(provide 'ffe-ruby)
;;; ffe-ruby.el ends here
