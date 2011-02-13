;; Using 1024x768
;; see: http://www.emacswiki.org/emacs/GoodFonts
;; sudo apt-get install xfonts-terminus  console-terminus
(set-face-attribute 'default nil :font "-*-terminus-medium-r-*-*-*-140-75-75-*-*-iso8859-15")

;; see http://riddell.us/ClojureSwankLeiningenWithEmacsOnLinux.html
;; clojure-mode
(add-to-list 'load-path "~/opt/clojure-mode")
(require 'clojure-mode)

;; slime
(eval-after-load "slime" 
  '(progn (slime-setup '(slime-repl))))

(add-to-list 'load-path "~/opt/slime")
(require 'slime)
(slime-setup)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inferior-lisp-program "clj-env-dir"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; see https://github.com/technomancy/swank-clojure/blob/master/README.md
(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)

