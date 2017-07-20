(package-initialize)

;; setting the windows specific variables, if we are on nt
(load-file (expand-file-name
            (cond ((eq system-type 'windows-nt) "windows.el"))
            user-emacs-directory))

(setq haskell-mode-hook nil)
(setq custom-file "~/.emacs.d/custom.el")
(load-file (expand-file-name custom-file user-emacs-directory))
;;(load custom-file)

(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
                   user-emacs-directory))

;; trying out org-drill again:
;; org-drill--compute-cloze-keywords: Symbol’s function definition is void: copy-list
;; seems that 'cl is not imported automatically...
;; http://stackoverflow.com/questions/34983106/how-to-install-org-drill
(require 'cl)
(require 'org-drill)
