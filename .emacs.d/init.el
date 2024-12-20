(load-theme 'solarized-light t)

(setq initial-frame-alist
      (append initial-frame-alist
              '((width  . 192)
                (height . 108))))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "/Users/vedran/src/lsp-pascal")
(require 'lsp-pascal)

(add-hook 'pascal-mode-hook #'lsp)
(add-hook 'opascal-mode-hook #'lsp)

;; set this in case the language server is not available in PATH
(setq lsp-pascal-command "/Users/vedran/src/castle-engine/bin/pasls")

;; set this to your FPC source location
(setq lsp-pascal-fpcdir "/Users/vedran/fpcupdeluxe-trunk/fpcsrc")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Menlo" :foundry "nil" :slant normal :weight regular :height 140 :width normal)))))
