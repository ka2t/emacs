;; flycheck
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'flycheck-tip)
(bind-key "C-c C-n" 'flycheck-tip-cycle)
(bind-key "C-c C-r" 'flycheck-tip-cycle-reverse)

(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
