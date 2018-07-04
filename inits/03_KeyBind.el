;; Global key bind
(define-key global-map [?¥] [?\\])
(bind-key* "C-h" 'delete-backward-char)
(bind-key*"M-h" 'backward-kill-word)
(bind-key* "M-p" 'backward-paragraph)
(bind-key* "M-n" 'forward-paragraph)

;; Prevent incorrectly-input
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x C-c"))
(defalias 'exit 'save-buffers-kill-emacs)

;; goto-map
(define-key goto-map [?l] #'goto-line)
