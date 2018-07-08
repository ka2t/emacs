; emacs directory

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; el-get
;(setq el-get-byte-compile nil)
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path (locate-user-emacs-file "el-get/recipes"))

(el-get-bundle use-package)
(el-get-bundle init-loader)
(el-get-bundle popup)
(el-get-bundle auto-complete)
(el-get-bundle migemo)
(el-get-bundle anything)
;; (el-get-bundle helm)
;; (el-get-bundle helm-ag)
;; (el-get-bundle helm-descbinds)
;; (el-get-bundle helm-migemo)
;; (el-get-bundle helm-swoop)
;; (el-get-bundle helm-c-yasnippet)
;; (el-get-bundle helm-gtags)
;; (el-get-bundle helm-ls-git)
;; (el-get-bundle helm-ghq)
;; (el-get-bundle helm-dash)
(el-get-bundle owdriver)
(el-get-bundle switch-window)
(el-get-bundle flycheck)
(el-get-bundle flycheck-tip)
(el-get-bundle yasnippet)
(el-get-bundle yasnippet-snippets)
(el-get-bundle magit)
(el-get-bundle howm)
(el-get-bundle paredit)
(el-get-bundle markdown-mode)
(el-get-bundle auto-complete-c-headers)
(el-get-bundle irony-mode)
(el-get-bundle ac-irony)
;;(el-get-bundle csharp-mode)
;;(el-get-bundle omnisharp-mode)
;;(el-get-bundle haskell-mode)

;; init-loader
(use-package init-loader
  :config
  (setq init-loader-show-log-after-init 'error-only)
  (init-loader-load))
