;; (use-package flycheck
;;   :config
;;   (global-flycheck-mode)
;;   )

(use-package lsp-mode
  ;;:custom
  ;;(lsp-print-io t)
  :commands lsp
  :bind
  ("M-," . xref-pop-marker-stack)
  ("M-." . xref-find-definitions)
  ("M-/" . xref-find-references)
)

(use-package lsp-ui :commands lsp-ui-mode)
;;(use-package company-lsp :commands company-lsp)
;(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
;; optionally if you want to use debugger
;(use-package dap-mode)

 (use-package lsp-haskell
  :config
  (add-hook 'haskell-mode-hook #'lsp)
  )

(use-package smart-jump
  :config
  (smart-jump-setup-default-registers)
  )
