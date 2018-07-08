;;(require 'anything-config)
;;(require 'anything-grep)

;;(setq anything-enable-shortcuts 'prefix)
;;(define-key anything-map (kbd "@") 'anything-select-with-prefix-shortcut)
;;(global-set-key (kbd "C-x b") 'anything-mini)

(use-package anything
  :config
  (use-package anything-config)
  (use-package anything-grep)
  (setq anything-ff-auto-update-initial-value nil)

  :bind (("M-x" . anything-M-x)
         ("C-x /" . anything-resume)
         ("C-x C-f" . anything-find-files)
         ("C-x C-r" . anything-mini)
         ("M-y" . anything-show-kill-ring)
         ("C-x i" . anything-imenu)
         ("C-x b" . anything-buffer)
         ("C-x g" . anything-grep)
         ("M-'" . anything-pop-stack)
         ("C-;" . anything-for-files)
         ("C-x r l" . anything-bookmarks))

  :bind (:map anything-map
              ("M-z" . anything-select-action)
              ("C-h" . delete-backward-char)))

;; :bind (:map anything-files-map
  ;;             ("C-h" . delete-backward-char)
  ;;             ("TAB" . anything-execute-persistent-action)))
