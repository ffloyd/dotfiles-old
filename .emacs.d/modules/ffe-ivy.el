;;; ffe-ivy.el --- Ivy setup

;;; Code:

(require 'ffe-packages)

(ffe--req 'ivy)

(setq ivy-count-format "(%d/%d) ")
(ivy-mode)

;; Ivy-based interface to standard commands
(general-def
  "C-s" 'swiper
  "M-x" 'counsel-M-x
  "C-x C-f" 'counsel-find-file
  "<f1> f" 'counsel-describe-function
  "<f1> v" 'counsel-describe-variable
  "<f1> l" 'counsel-find-library
  "<f2> i" 'counsel-info-lookup-symbol
  "<f2> u" 'counsel-unicode-char)

;; Ivy minibuffer tweaks
(general-def ivy-minibuffer-map
  "C-j" 'ivy-next-line
  "C-k" 'ivy-previous-line)

(provide 'ffe-ivy)
;;; ffe-ivy.el ends here
