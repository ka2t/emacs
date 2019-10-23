(use-package yasnippet
  :demand t
  :diminish yas-minor-mode
  :bind (:map yas-minor-mode-map
              ("C-x y i" . helm-yas-complete)
              ("C-x y n" . helm-yas-create-snippet-on-region)
              ("C-x y v" . helm-yas-visit-snippet-file)
              ("C-x y l" . yas-describe-tables)
              ("C-x y g" . yas-reload-all))
  :config
  (yas-global-mode 1)
  )
