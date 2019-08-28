; ファイルの場所
(setq org-directory "~/Org")
(setq org-agenda-files '("~/Org"))

;; Org-captureを呼び出すキーシーケンス
(define-key global-map "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)

;; Org-captureのテンプレート（メニュー）の設定
(setq org-capture-templates
      '(("t" "TODO" entry
         (file+headline "~/Org/todo.org" "予定")
         "* TODO %?\n\n")
        ("m" "Memo" entry
         (file+headline "~/Org/memo.org" "メモ")
         "* %? %U :memo: \n")))

; メモをC-M-^一発で見るための設定
; https://qiita.com/takaxp/items/0b717ad1d0488b74429d から拝借
(defun show-org-buffer (file)
  "Show an org-file FILE on the current buffer."
  (interactive)
  (if (get-buffer file)
      (let ((buffer (get-buffer file)))
        (switch-to-buffer buffer)
        (message "%s" file))
    (find-file (concat "~/Org/" file))))
(global-set-key (kbd "C-M-^") '(lambda () (interactive)
                                 (show-org-buffer "memo.org")))
