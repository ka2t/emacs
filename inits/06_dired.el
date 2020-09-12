(use-package direx)

(push '(direx:direx-mode :position left :width 40 :dedicated t)
      popwin:special-display-config)

(bind-key
 [f11]
 (defun direx:jump-to-project-directory ()
   "If in project, launch direx-project otherwise start direx."
  (interactive)
  (let ((result (ignore-errors
                  (direx-project:jump-to-project-root-other-window)
                  t)))
    (unless result
      (direx:jump-to-directory-other-window)))))
