;; popwin
(use-package popwin
  :config
  (popwin-mode 1)
  ;;(setq display-buffer-function 'popwin:display-buffer)
  (setq popwin:popup-window-position 'bottom))

;; winner
(winner-mode 1)
(bind-key* "C-x w f" 'winner-undo)
(bind-key* "C-x w b" 'winner-redo)

;; switch-window
(bind-key* "C-t" 'other-window)
;(setq switch-window-shortcut-style 'qwerty)
;(bind-key* "C-t" 'switch-window)

;; toggle window split
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
         (next-win-buffer (window-buffer (next-window)))
         (this-win-edges (window-edges (selected-window)))
         (next-win-edges (window-edges (next-window)))
         (this-win-2nd (not (and (<= (car this-win-edges)
                     (car next-win-edges))
                     (<= (cadr this-win-edges)
                     (cadr next-win-edges)))))
         (splitter
          (if (= (car this-win-edges)
             (car (window-edges (next-window))))
          'split-window-horizontally
        'split-window-vertically)))
    (delete-other-windows)
    (let ((first-win (selected-window)))
      (funcall splitter)
      (if this-win-2nd (other-window 1))
      (set-window-buffer (selected-window) this-win-buffer)
      (set-window-buffer (next-window) next-win-buffer)
      (select-window first-win)
      (if this-win-2nd (other-window 1))))))

(bind-key* "M-t" 'toggle-window-split)

;;; Frame Size
(when (window-system)
  (set-frame-size
   (selected-frame)
   120  ; 横幅
   (/ (x-display-pixel-height) (frame-char-height))))
