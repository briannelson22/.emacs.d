(require 'package)


; list the packages you want
(setq package-list '(queue clojure-mode clojurescript-mode clj-refactor dash pkg-info cider ac-cider evil))

; list the repositories containing them
;(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
;                         ("gnu" . "http://elpa.gnu.org/packages/")
;                         ("marmalade" . "http://marmalade-repo.org/packages/")))
(setq package-archives '(
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")))
			 
			 
                         

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(when (not package-archive-contents)
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (when (not (package-installed-p package))
    (package-install package)))

;(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
;(setq nrepl-hide-special-buffers t)
;(add-hook 'cider-repl-mode-hook 'paredit-mode)

;(global-set-key [M-left] 'windmove-left)          ; move to left windnow
;(global-set-key [M-right] 'windmove-right)        ; move to right window
;(global-set-key [M-up] 'windmove-up)              ; move to upper window
;(global-set-key [M-down] 'windmove-down)          ; move to downer window
(evil-mode 1)
