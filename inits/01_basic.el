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

;; Face
(load-theme 'misterioso t)
(set-cursor-color "orange")
(set-face-attribute 'region nil :foreground "black" :background "wheat")
(set-face-foreground 'mode-line "MidnightBlue")
(set-face-background 'mode-line "MediumPurple2")

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
;;(global-hl-line-mode t)
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

