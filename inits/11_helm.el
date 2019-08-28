(use-package helm
  :config
  (use-package helm-descbinds)
  (use-package helm-ag)
  (use-package helm-gtags)  
  (use-package helm-org-rifle)
  
  :bind
  ("M-x" . helm-M-x)
  ("C-x /" . helm-resume)
  ("C-x C-f" . helm-find-files)
  ("C-x C-r" . helm-recentf)
  ("M-y" . helm-show-kill-ring)
  ("C-x i" . helm-imenu)
  ("M-o" . helm-occur)
  ("C-x b" . helm-buffers-list)
  ("C-c g" . helm-ag)
  ("M-'" . helm-ag-pop-stack)
  ("C-;" . helm-for-files)
  ("C-'" . helm-browse-project)
  ("C-x r l" . helm-bookmarks)
  ("M-." . gtags-find-tag-from-here)
  ("M-," . helm-gtags-pop-stack)
  ("C-c m" . helm-org-rifle-org-directory)
)

  ;; :bind (:map helm-map
  ;;        ("C-z" . helm-select-action)
  ;;        ("C-h" . delete-backward-char)
  ;;        :map helm-find-files-map
  ;;        ("C-h" . delete-backward-char)
  ;;        ("TAB" . helm-execute-persistent-action)
  ;;        :map helm-read-file-map
  ;;        ("TAB" . helm-execute-persistent-action))

  ;; 候補のディレクトリが一つしかない場合に、自動的に展開しない
  ;;  (setq helm-ff-auto-update-initial-value nil))
