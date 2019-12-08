(use-package helm
  :demand t
  :config
  (use-package helm-descbinds)
  (use-package helm-ag)
  (use-package helm-ghq)
  (use-package helm-org-rifle)
  (setq helm-ag-base-command "rg -S --vimgrep --no-heading")
  
  :bind
  ("M-x" . helm-M-x)
  ("C-x /" . helm-resume)
  ("C-x C-f" . helm-find-files)
  ("C-x C-r" . helm-recentf)
  ("M-y" . helm-show-kill-ring)
  ("C-x b" . helm-buffers-list)

  (:map search-map
        ("i" . helm-imenu)
        ("o" . helm-occur)
        ("s" . helm-ag)
        ("p" . helm-ag-project-root))

  (:map goto-map
        ("p" . helm-ghq)        
        ("f" . helm-browse-project)
        ("h" . help-for-help)
        ("b" . helm-bookmarks)
        ("," . helm-ag-pop-stack)
        ("m" . helm-all-mark-rings))

  (:map helm-map
        ("C-z" . helm-select-action)
        ("C-h" . delete-backward-char)
        :map helm-find-files-map
        ("C-h" . delete-backward-char)
        ("TAB" . helm-execute-persistent-action)
        :map helm-read-file-map
        ("TAB" . helm-execute-persistent-action)))

  ;; 候補のディレクトリが一つしかない場合に、自動的に展開しない
  ;;  (setq helm-ff-auto-update-initial-value nil))
