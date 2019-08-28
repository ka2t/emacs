;; Language
(set-language-environment 'Japanese)
(setenv "LANG" "ja_JP.UTF-8")

;; Coding system
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8) 

;; font
(add-to-list 'default-frame-alist '(font . "ricty-10"))

;; (let ((size (if (>= (x-display-pixel-width) 1900) 14 10)))
;;   (condition-case err
;;       (let ((myfont (format "ricty-%d" size)))
;;     (set-frame-font myfont)
;;     (add-to-list 'default-frame-alist `(font . ,myfont)))
;;     (error (message "%s" err))))
