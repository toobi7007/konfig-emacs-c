
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(use-package try :ensure t)
(use-package which-key :ensure t :config (which-key-mode))
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; Integration von MELPA
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(require 'yasnippet)
(yas-global-mode 1)
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; yasnippet integration
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; auto-complete
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(add-to-list 'load-path "/home/akex/.emacs.d/elpa/avy-flycheck-20160720.1500/avy-flycheck.el")
(require 'avy-flycheck)
(global-flycheck-mode)
(global-set-key (kbd "C-c a") #'avy-flycheck-goto-error)
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; syntax check
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (doom-dracula)))
 '(custom-safe-themes
   (quote
    ("e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" default)))
 '(inhibit-startup-screen t)
 '(jdee-server-dir "/home/akex/.emacs.d/elpa/jdee-server/target")
 '(package-selected-packages
   (quote
    (doom-themes iedit direx magit avy-flycheck yasnippet-snippets which-key try use-package))))

;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(use-package modern-cpp-font-lock
  :ensure t)
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; font
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(defun code-compile ()
  (interactive)
  (unless (file-exists-p "Makefile")
    (set (make-local-variable 'compile-command)
     (let ((file (file-name-nondirectory buffer-file-name)))
       (format "%s -o %s %s"
           (if  (equal (file-name-extension file) "cpp") "g++" "gcc" )
           (file-name-sans-extension file)
           file)))
    (compile compile-command)))

(global-set-key [f9] 'code-compile)
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; Funktion zum Kompilieren
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )





