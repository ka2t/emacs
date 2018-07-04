;; C++ style
(defun add-c++-mode-conf ()
  (c-set-style "ellemtel"))
(add-hook 'c++-mode-hook 'add-c++-mode-conf)

;; C style
(defun add-c-mode-common-conf ()
  (c-set-style "ellemtel")
  )
(add-hook 'c-mode-common-hook 'add-c-mode-common-conf)
