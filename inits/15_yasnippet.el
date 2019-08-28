(use-package yasnippet
  :diminish yas-minor-mode
  :bind (:map yas-minor-mode-map
              ("C-x i i" . helm-yas-complete)
              ("C-x i n" . helm-yas-create-snippet-on-region)
              ("C-x i v" . helm-yas-visit-snippet-file)
              ("C-x i l" . yas-describe-tables)
              ("C-x i g" . yas-reload-all))              
  :config
  (yas-global-mode 1)
  )
