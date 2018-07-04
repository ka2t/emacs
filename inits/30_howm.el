(setq howm-view-title-header "#")  ; this should be evaluated in advance to handle markdown
(setq howm-menu-lang 'ja)
(autoload 'howm-menu "howm" "Hitori Otegaru Wiki Modoki" t)

(bind-key* "\C-c,," 'howm-menu)

(add-hook 'gfm-mode 'howm-mode)
(add-to-list 'auto-mode-alist '("\\.md$" . gfm-mode))
(setq howm-file-name-format "%Y-%m-%d-%H%M%S.md")

;; 内容が空ならファイルごと削除する
(if (not (memq 'delete-file-if-no-contents after-save-hook))
    (setq after-save-hook
          (cons 'delete-file-if-no-contents after-save-hook)))
(defun delete-file-if-no-contents ()
  (when (and
         (buffer-file-name (current-buffer))
;         (string-match (regexp-opt '(".md" ".howm")) (buffer-file-name (current-buffer)))
         (= (point-min) (point-max)))
    (delete-file
     (buffer-file-name (current-buffer)))))
