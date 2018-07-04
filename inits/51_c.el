;;
;; auto-complete-c-headers
;;
(defun my:ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)

;;
;; irony-mode
;;
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;;
;; ac-irony
;:
(defun my-ac-irony-setup ()
  ;; be cautious, if yas is not enabled before (auto-complete-mode 1), overlays
  ;; *may* persist after an expansion.
;;  (yas-minor-mode 1)
;;  (auto-complete-mode 1)

  (add-to-list 'ac-sources 'ac-source-irony)
  (define-key irony-mode-map (kbd "M-RET") 'ac-complete-irony-async))

(add-hook 'irony-mode-hook 'my-ac-irony-setup)


;; C++ style
(defun add-c++-mode-conf ()
  (c-set-style "ellemtel")
  (local-set-key (kbd "C-c C-n") nil)
  (local-set-key (kbd "C-c C-r") nil))
(add-hook 'c++-mode-hook 'add-c++-mode-conf)

;; C style
(defun add-c-mode-common-conf ()
  (c-set-style "ellemtel")  
  (local-set-key (kbd "C-c C-n") nil)
  (local-set-key (kbd "C-c C-r") nil))
(add-hook 'c-mode-common-hook 'add-c-mode-common-conf)
