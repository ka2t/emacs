
;; exec-path
(add-to-list 'exec-path "/opt/local/bin")
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "~/bin")
(setenv "PATH" (concat "/opt/local/bin:" (getenv "PATH")))
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setenv "PATH" (concat "~/bin:" (getenv "PATH")))

;; Gnuclient
(use-package server)
(unless (server-running-p)
  (server-start))

;; Prevent incorrectly-input
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x C-c"))
(defalias 'exit 'save-buffers-kill-emacs)

;; dired
(put 'dired-find-alternate-file 'disabled nil)
;; wdired
;;(bind-key "r" 'wdired-change-to-wdired-mode dired-mode-map)

;; Theme
(use-package madhat2r-theme)

;; 起動画面を表示しない
(setq inhibit-splash-screen t)

;; タイトルバーにいろいろ表示する
(setq frame-title-format (format "%%f - %s-%s@%s" invocation-name emacs-version system-name))

;; 右から左に読む言語に対応させないことで描画高速化
(setq-default bidi-display-reordering nil)

;; メニューバー/ツールバー/スクロールバー
(menu-bar-mode 0)
(tool-bar-mode -1)

;; Highlight
(global-hl-line-mode t)
(transient-mark-mode t)
(show-paren-mode t)

;; electric-pair 勝手に閉じカッコとかを入れてくれるやつ
(electric-pair-mode 1)

;; タブでなくスペースでインデント
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; いちいち音を鳴らすな
(setq ring-bell-function 'ignore)

;; Disable auto-fill  
(auto-fill-mode -1)

;; line number
(global-linum-mode t)

;; C-dでregionを削除
(delete-selection-mode t)

;;; auto-save
(setq backup-directory-alist `((".*" . ,(concat user-emacs-directory "backup/"))))
(setq auto-save-file-name-transforms `((".*" ,(concat user-emacs-directory "auto-save/") t)))

;; History
(setq recentf-max-saved-items 2000)
(setq message-log-max 10000)
(setq history-length 2000)
(setq history-delete-duplicates t)
(savehist-mode 1)

;; ediff
;; コントロール用のバッファを同一フレーム内に表示
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; diffのバッファを上下ではなく左右に並べる
(setq ediff-split-window-function 'split-window-horizontally)

;; browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "open")

;; avoid "Symbolic link to SVN-controlled source file; follow link? (yes or no)"
(setq vc-follow-symlinks t)

;; visual-regexp
(use-package visual-regexp
  :bind
  (:map search-map
        ("r" . vr/replace)
        ("q r" . vr/query-replace)))

;; back-button
(use-package back-button
  :config
  (back-button-mode 1)
  :bind
  ("C-c n" . back-button-local-forward)
  ("C-c p" . back-button-local-backward)
  ("C-c C-n" . back-button-global-forward)
  ("C-c C-p" . back-button-global-backward))

;; iflipb
(use-package iflipb
  :config
  (setq iflipb-ignore-buffers (list "^[*]" "^magit" "]$"))
  (setq iflipb-wrap-around t)
  :bind
  ("C-x n" . iflipb-next-buffer)
  ("C-x p" . iflipb-previous-buffer))

;; Other global key bind
(define-key key-translation-map [?\C-h] [?\C-?]) ;; minibufferでもC-hできるようにする
(bind-key* "M-SPC" 'mark-word)
(bind-key* "C-h" 'delete-backward-char)
(bind-key* "M-h" 'backward-kill-word)
(bind-key* "M-p" 'backward-paragraph)
(bind-key* "M-n" 'forward-paragraph)
(bind-key* "C-<down>" 'shrink-window)
(bind-key* "C-<up>" 'enlarge-window)
(bind-key* "C-c e r" 'eval-region)
(bind-key* "C-c e b" 'eval-buffer)
(bind-key* "C-c c" 'comment-region)
(bind-key* "C-c u" 'uncomment-region)
(bind-keys :map goto-map
           ("h" . help-for-help)
           ("l" . goto-line))
