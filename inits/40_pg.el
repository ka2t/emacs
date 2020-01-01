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
  :custom
  ((lsp-enable-snippet t)
   (lsp-enable-indentation nil)
   (lsp-prefer-flymake nil)
   (lsp-document-sync-method 'incremental)
   (lsp-inhibit-message t)
   (lsp-message-project-root-warning t)
   (create-lockfiles nil))
  :config
  (use-package helm-lsp)
  :bind
   ("M-," . xref-pop-marker-stack)
   ("M-." . xref-find-definitions)
   ("M-/" . xref-find-references)
   (:map search-map
         ("l" . helm-lsp-workspace-symbol))
  :hook
  (ruby-mode . lsp))
;;  (prog-major-mode . lsp-prog-major-mode-enable))

(use-package lsp-ui
  :commands lsp-ui-mode
  :after lsp-mode
  :custom
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-header t)
  (lsp-ui-doc-include-signature t)
  (lsp-ui-doc-position 'top)
  (lsp-ui-doc-max-width  60)
  (lsp-ui-doc-max-height 20)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-use-webkit nil)
  (lsp-ui-flycheck-enable t)

  (lsp-ui-sideline-enable nil)
  (lsp-ui-imenu-enable nil)

  ;; lsp-ui-peek
  (lsp-ui-peek-enable t)
  (lsp-ui-peek-always-show t)
  (lsp-ui-peek-peek-height 30)
  (lsp-ui-peek-list-width 30)
  (lsp-ui-peek-fontify 'always)
  :hook
  (lsp-mode . lsp-ui-mode)
  :bind
  (("M-." . lsp-ui-peek-find-definitions)
   ("M-/" . lsp-ui-peek-find-references)))

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
