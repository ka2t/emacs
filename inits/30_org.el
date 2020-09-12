(setq org-directory "~/Org")
(setq org-agenda-files '("~/Org"))

;; Org-captureを呼び出すキーシーケンス
(bind-key* "C-o c" 'org-capture)
(bind-key* "C-o a" 'org-agenda)
(bind-key* "C-o r" 'helm-org-rifle-org-directory)

;; Org-capture template
(setq org-capture-templates
      '(("t" "TODO" entry
         (file "~/Org/todo.org")
         "* TODO %? %U \n")
        ("m" "Memo" entry
         (file "~/Org/memo.org")
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
