(require 'yasnippet)

;; yas起動
;;(yas-global-mode 1)
;; 既存スニペットを挿入する
(bind-key "C-c i i" 'helm-yas-complete yas-minor-mode-map)
;; 新規スニペットを作成するバッファを用意する
(bind-key "C-c i n" 'helm-yas-create-snippet-on-region yas-minor-mode-map)
;; 既存スニペットを閲覧/編集する
(bind-key "C-c i v" 'helm-yas-visit-snippet-file yas-minor-mode-map)
