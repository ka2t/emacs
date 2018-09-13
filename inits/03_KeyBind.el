;; Global key bind
(bind-key* "C-?" 'help-for-help)
(bind-key* "C-h" 'delete-backward-char)
(define-key key-translation-map [?\C-h] [?\C-?]) ;; minibufferでもC-hできるようにする
(bind-key* "M-h" 'backward-kill-word)
(bind-key* "M-p" 'backward-paragraph)
(bind-key* "M-n" 'forward-paragraph)

(bind-key* "C-<down>" 'shrink-window)
(bind-key* "C-<up>" 'enlarge-window)

(bind-key* "C-M-s" 'vr/isearch-forward)
(bind-key* "C-M-r" 'vr/isearch-backward)
(bind-key* "C-c r" 'vr/replace)
(bind-key* "C-c q" 'vr/query-replace)

(bind-key* "C-c e r" 'eval-region)
(bind-key* "C-c e b" 'eval-buffer)
