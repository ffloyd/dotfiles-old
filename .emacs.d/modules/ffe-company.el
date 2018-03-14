;;; ffe-company.el --- Company basic setup (autocompletion)

;;; Code:

(require 'ffe-packages)
(require 'ffe-keys)

(ffe--req 'company)

(global-company-mode +1)

(general-def company-active-map
  "C-j" 'company-select-next-or-abort
  "C-k" 'company-select-previous-or-abort)

(general-def company-search-map
  "C-j" 'company-select-next-or-abort
  "C-k" 'company-select-previous-or-abort)

(provide 'ffe-company)
;;; ffe-company.el ends here
