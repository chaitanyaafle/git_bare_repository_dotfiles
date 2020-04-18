(require 'package)
(setq enable-package-at-startup nil)

;; (add-to-list 'package-archives
;; 	     '("gnu" . "http://elpa.gnu.org/packages/")
;; 	     '("melpa" . "https://melpa.org/packages/")
;; 	     '("org" . "http://orgmode.org/elpa/"))

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

;; (unless (package-installed-p 'material-theme)
;;   (package-refresh-contents)
;;   (package-install 'material-theme))



;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
;; (when (file-readable-p "~/.emacs.d/config.org")
;;    (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
;;; 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#263238"))
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" default)))
 '(doc-view-resolution 100)
 '(fci-rule-color "#37474f")
 '(hl-sexp-background-color "#1c1f26")
 '(interleave-disable-narrowing t)
 '(org-agenda-files
   (quote
    ("~/org/personal/tasks.org" "~/org/personal/articles.org" "~/org/personal/buy.org" "~/org/personal/books.org" "~/org/public/blog.org" "~/Downloads/test_pdf/test.org")))
 '(org-capture-templates
   (quote
    (("r" "Research related task" entry
      (file "~/org/agenda/research.org")
      "* TODO %?" :empty-lines 1))))
 '(org-contacts-files (quote ("~/org/personal/contacts.org")))
 '(package-selected-packages
   (quote
    (openwith org-ref org-plus-contrib org-contacts org-pdfview interleave org-noter chess fill-column-indicator auto-complete expand-region mark-multiple swiper linum-relative popup-kill-ring diminish spaceline company dashboard rainbow-delimiters hungry-delete switch-window avy smex ido-vertical-mode org-bullets beacon material-theme spacemacs-theme which-key use-package)))
 '(pdf-tools-handle-upgrades nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Menlo")))))
