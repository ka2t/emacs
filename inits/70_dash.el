;; dash
(use-package helm-dash
  :custom
  (helm-dash-docsets-path (expand-file-name "~/.docsets"))
  :init
  (add-hook 'ruby-mode-hook '(lambda () (setq-local dash-docs-docsets '("Ruby"))))
  (add-hook 'c++-mode-hook '(lambda () (setq-local dash-docs-docsets '("C++" "Boost"))))
  (add-hook 'haskell-mode-hook '(lambda () (setq-local dash-docs-docsets '("Haskell"))))
  (add-hook 'emacs-lisp-mode-hook '(lambda () (setq-local dash-docs-docsets '("Emacs_Lisp"))))
  :bind
  (:map goto-map
        ("d" . helm-dash-at-point)))
