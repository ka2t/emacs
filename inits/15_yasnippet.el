(use-package yasnippet
  :config
  (use-package yasnippet-snippets)
  (use-package helm-c-yasnippet)
  :bind
  (:map yas-minor-mode-map
        ("M-i i" . helm-yas-complete)
        ("M-i n" . helm-yas-create-snippet-on-region)
        ("M-i v" . helm-yas-visit-snippet-file)
        ("M-i l" . yas-describe-tables)
        ("M-i g" . yas-reload-all))
  :init
  (yas-global-mode t))
