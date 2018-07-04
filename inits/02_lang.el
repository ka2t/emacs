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
(add-to-list 'default-frame-alist '(font . "ricty-13.5"))
