(use-package company
  :demand t
  :init
  (setq company-selection-wrap-around t)
  :bind
  ("C-M-i" . 'company-complete)
  (:map company-active-map
        ("C-n" . company-select-next)
        ("C-p" . company-select-previous)
        ("C-s" . company-filter-candidates)
        ("\t" . company-complete-selection)
        )
  (:map company-search-map
        ("C-n" . company-search-next)
        ("C-p" . company-search-previous))
  :config
  (global-company-mode))
