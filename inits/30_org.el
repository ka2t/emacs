(setq org-directory "~/Org")
(setq org-agenda-files '("~/Org"))

;; Org-captureを呼び出すキーシーケンス
(bind-key* "C-c c" 'org-capture)
(bind-key* "C-c a" 'org-agenda)
(bind-key* "C-c m" 'helm-org-rifle-org-directory)

;; Org-capture template
(setq org-capture-templates
      '(("t" "TODO" entry
         (file+headline "~/Org/todo.org" "TODO")
         "* TODO %? %U \n")
        ("m" "Memo" entry
         (file+headline "~/Org/memo.org" "MEMO")
         "* %? %U :memo: \n")))

;; org-refile
(setq org-refile-targets
       (quote (("tech.org" :level . 1)
               ("fishing.org" :level . 1)
               ("misc.org" :level . 1))))

; メモをC-M-^一発で見るための設定
(defun show-org-buffer (file)
  (interactive)
  (if (get-buffer file)
      (let ((buffer (get-buffer file)))
        (switch-to-buffer buffer)
        (message "%s" file))
    (find-file (concat "~/Org/" file))))
(global-set-key (kbd "C-M-^") '(lambda () (interactive)
                                 (show-org-buffer "memo.org")))
