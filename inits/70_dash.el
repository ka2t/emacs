;; dash
(setq helm-dash-docsets-path (expand-file-name "~/docsets"))
(setq helm-dash-min-lengh 0)
(setq helm-dash-browser-func 'browse-url-firefox)

(defun my-set-doctype-for-helm-dash ()
  (setq-local helm-dash-docsets
              (case major-mode
                (c++-mode '("C++" "Boost" "OpenGL_4"))
                (haskell-mode '("Haskell"))
                (emacs-lisp-mode '("Emacs_Lisp")))))
(dolist (hook (list 'c++-mode-hook 'haskell-mode-hook))
  (add-hook hook 'my-set-doctype-for-helm-dash))

(define-key goto-map [?d] #'helm-dash-at-point)
