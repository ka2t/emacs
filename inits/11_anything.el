(use-package anything
  :config
  (use-package anything-config)
  (use-package anything-grep)
  (setq anything-ff-auto-update-initial-value nil)

  (setq anything-grep-alist
        ;; 全バッファのファイル名においてegrepをかける。moccurの代わり。
        '(("buffers" ("rg %s $buffers" "/"))
          ;; ~/memo 以下から再帰的にegrepをかける。不要なファイルは除かれる。
          ("memo" ("ack-grep -af | xargs egrep -Hin %s" "~/memo"))
          ;; ~/doc/postgresql-74 から *.txt に対してegrepをかける。
          ("PostgreSQL" ("egrep -Hin %s *.txt" "~/doc/postgresql-74/"))
          ;; ~/ruby以下の全Rubyスクリプトと~/bin以下のファイルをまとめて検索する。
          ("~/bin and ~/ruby"
           ("ack-grep -afG 'rb$' | xargs egrep -Hin %s" "~/ruby")
           ("ack-grep -af | xargs egrep -Hin %s" "~/bin"))))

  :bind (("M-x" . anything-M-x)
         ("C-x /" . anything-resume)
         ("C-x C-f" . anything-find-files)
         ("C-x C-r" . anything-mini)
         ("M-y" . anything-show-kill-ring)
         ("C-x C-i" . anything-imenu)
         ("C-x C-b" . anything-buffers-list)
         ("C-x C-g" . anything-grep)
         ("C-x g" . anything-grep-by-name)
         ("M-'" . anything-pop-stack)
         ("C-;" . anything-for-files)
         ("C-x r l" . anything-bookmarks))

  :bind (:map anything-map
              ("M-z" . anything-select-action)
              ("C-h" . delete-backward-char)))

