;; Global key bind
(bind-key* "C-?" 'help-for-help)
(bind-key* "C-h" 'delete-backward-char)
(define-key key-translation-map [?\C-h] [?\C-?]) ;; minibufferでもC-hできるようにする
(bind-key* "M-h" 'backward-kill-word)
(bind-key* "M-p" 'backward-paragraph)
(bind-key* "M-n" 'forward-paragraph)

(use-package back-button
  :config
  (back-button-mode 1)
  :bind
  (:map goto-map
        ("." . back-button-local-forward)
        ("," . back-button-local-forward)
        ("g" . my/exchange-point-and-mark)
        ("l" . my/exchange-point-and-mark)))

(defun my/exchange-point-and-mark ()
  "No mark active `exchange-point-and-mark'."
  (interactive)
  (exchange-point-and-mark)
  (deactivate-mark))

(bind-key* "C-<down>" 'shrink-window)
(bind-key* "C-<up>" 'enlarge-window)

(bind-key* "C-M-s" 'vr/isearch-forward)
(bind-key* "C-M-r" 'vr/isearch-backward)
(bind-key* "C-c r" 'vr/replace)
(bind-key* "C-c q" 'vr/query-replace)

(bind-key* "C-c e r" 'eval-region)
(bind-key* "C-c e b" 'eval-buffer)

