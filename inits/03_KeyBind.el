;; Global key bind
(bind-key* "C-h" 'delete-backward-char)
(bind-key* "M-h" 'backward-kill-word)
(bind-key* "M-p" 'backward-paragraph)
(bind-key* "M-n" 'forward-paragraph)

(bind-key* "C-<down>" 'shrink-window)
(bind-key* "C-<up>" 'enlarge-window)

(bind-key* "C-c r" 'vr/replace)
(bind-key* "C-c q" 'vr/query-replace)
