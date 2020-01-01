(use-package magit
  :config
  (setq magit-display-buffer-function 'magit-display-buffer-fullframe-status-v1)
  (setq magit-ediff-dwim-show-on-hunks t)
  (define-key magit-mode-map 
    (kbd "q") 
    (lambda() (interactive) (magit-mode-bury-buffer t)))
  :bind
  ("C-x m" . magit-status))
