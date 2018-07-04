(use-package auto-complete
  :config
  (use-package auto-complete-config)
  (global-auto-complete-mode t)
  (ac-config-default) 
  (setq ac-use-menu-map t)
  (setq ac-dwim t)
  ;(ac-set-trigger-key "TAB")
  :bind
  (:map ac-completing-map
        ("<tab>" . ac-complete))
  :bind*
  ("M-i" . auto-complete))
