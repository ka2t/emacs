(use-package smart-jump
  :config
  (smart-jump-setup-default-registers))

(use-package cmake-mode)

;; (use-package flycheck
;;   :config
;;   (global-flycheck-mode)
;;   )

(use-package lsp-mode
  :commands lsp
  :hook (c-mode . lsp)
  :custom
  ((lsp-enable-snippet t)
   (lsp-enable-indentation nil)
   (lsp-prefer-flymake nil)
   (lsp-document-sync-method 'incremental)
   (lsp-inhibit-message t)
   (lsp-message-project-root-warning t)
   (create-lockfiles nil))
  :bind
   ("M-," . xref-pop-marker-stack)
   ("M-." . xref-find-definitions)
   ("M-/" . xref-find-references)
  :hook
  (prog-major-mode . lsp-prog-major-mode-enable))

(use-package company-lsp
  :commands company-lsp
  :custom
  (company-lsp-cache-candidates nil)
  (company-lsp-async t)
  (company-lsp-enable-recompletion t)
  (company-lsp-enable-snippet t)
  :after
  (:all lsp-mode lsp-ui company yasnippet)
  :init
  (push 'company-lsp company-backends))

;; optionally if you want to use debugger
;(use-package dap-mode)

(use-package ccls
  :custom
  (ccls-executable "/usr/local/bin/ccls")
  (ccls-sem-highlight-method 'font-lock)
  (ccls-use-default-rainbow-sem-highlight)
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))

(use-package lsp-haskell
  :config
  (add-hook 'haskell-mode-hook #'lsp))

