(setq package-enable-at-startup nil)
;; Set the theme before the GUI loads to avoid flash
(load-theme 'modus-vivendi t)
(global-set-key (kbd "C-h C-t") #'modus-themes-toggle)
;; How much memory emacs can allocate before running garbage collecter
(setq gc-cons-threshold 100000000)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold 800000)))  ;; sane default
;; Better LSP performance 
(setq read-process-output-max (* 1024 1024))  ;; 1 MB

;; Increase Treesitter Performance
(setenv "LSP_USE_PLISTS" "true")
(setq lsp-use-plists t)

(setq native-comp-speed 3)
