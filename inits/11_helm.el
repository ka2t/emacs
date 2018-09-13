(use-package helm
  :config
  (use-package helm-descbinds)
  (use-package helm-gtags)
  (setq helm-ag-use-temp-buffer t)
  
  :bind(
  ("M-x" . helm-M-x)
  ("C-x /" . helm-resume)
  ("C-x C-f" . helm-find-files)
  ("C-x C-r" . helm-recentf)
  ("M-y" . helm-show-kill-ring)
  ("C-x i" . helm-imenu)
  ("C-x b" . helm-buffers-list)
  ("C-x g" . helm-ag)    ; change search directory with C-u prefix
  ("C-x C-g" . helm-ag-project-root)
  ("C-x p" . helm-browse-project)
  ("C-x B" . helm-bookmarks)
  ("M-." . helm-gtags-find-tag)
  ("M-," . helm-gtags-pop-stack))

  :bind (:map helm-map
              ("C-z" . helm-select-action)
              ("C-h" . delete-backward-char)
              ("TAB" . helm-execute-persistent-action)))
;              :map helm-find-files-map
;              ("C-h" . delete-backward-char)
;              :map helm-read-file-map
;              ("TAB" . helm-execute-persistent-action)))

  ;; 候補のディレクトリが一つしかない場合に、自動的に展開しない
  ;;  (setq helm-ff-auto-update-initial-value nil))
