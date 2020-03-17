;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!

(map!
 :m  "gb" #'dumb-jump-back
 :en "C-f" #'swiper
 :en "C-h" #'evil-first-non-blank
 :en "C-l" #'evil-end-of-line
 ;; Easier window navigation
 :en "M-h"   #'evil-window-left
 :en "M-j"   #'evil-window-down
 :en "M-k"   #'evil-window-up
 :en "M-l"   #'evil-window-right
 (:leader
   (:desc "jump" :prefix "j"
     :desc "to char"               :nv "j" #'avy-goto-char
     :desc "to word"               :nv "w" #'avy-goto-word-1
     :desc "to line above"         :nv "K" #'avy-goto-line-above
     :desc "to line below"         :nv "J" #'avy-goto-line-below
     :desc "to definition"         :nv "d" #'+lookup/definition
     :desc "to references"         :nv "r" #'+lookup/references
     :desc "back"                  :nv "b" #'dumb-jump-back)))

(after! tide
 (map! :localleader
       :map tide-mode-map
       "rrf"   #'tide-fix))

;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Stian Sivertsen"
      user-mail-address "name@somewhere.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 24))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
(setq doom-theme 'doom-outrun-electric)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
