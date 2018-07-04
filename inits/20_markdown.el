;;; gfm-mode
(autoload 'gfm-mode "markdown-mode.el" "Major mode for editing Markdown files" t)

(setq auto-mode-alist (cons '("\\.txt$" . gfm-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.text$" . gfm-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md$" . gfm-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.mdown$" . gfm-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.mdt$" . gfm-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.markdown$" . gfm-mode) auto-mode-alist))

 (setq markdown-command "gfm") ; use Docter(https://github.com/alampros/Docter)
;; (setq markdown-css-path "http://kevinburke.bitbucket.org/markdowncss/markdown.css")
