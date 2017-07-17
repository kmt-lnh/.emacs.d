;;; windows.el --- machine specific variables        -*- lexical-binding: t; -*-

;; Copyright (C) 2017  

;; Author:  kmt-lnh
;; Keywords: local, 

;; coreutils on windows
(setq find-program "") 
(setq grep-program "") 
(setq elfeed-curl-program-name "")

;; sqlite
(setq sql-sqlite-program "")

;; fsharp
(setq inferior-fsharp-program "")

;; R
(setq inferior-R-program-name "")

;; setting the path
(setq exec-path (append exec-path '("")))

;; we only need this on windows
(setq tramp-default-method "plink")

;; default dictionary
(setq default-directory "")

;; org folder
(setq my-org-folder "")

;; setting up org-agenda files
(setq org-agenda-files (list ""
                 ""
                 ""
                 ""
                 ""
                 ""
                 ""
                 ))

;; capture templates do the above files
(setq org-capture-templates
  '(
     
     ("r" "Reading" entry (file "" )
     "* %^{Author}: %^{Title}
     Added: %U
     %?")
     ("t" "Tasks" entry (file "" )
     "* TODO %^{Description} 
     Added: %U
     %a
     %?")
     ("n" "Notes" entry (file+datetree "" )
     "* %^{Description}
     Added: %U
     %?")
     ("e" "Events" entry (file+datetree+prompt "" )
     "* %^{Event}
     %t
     %?")
     ("s" "Spaced Repetition Card")
     ("ss"
      "Statistics Card"
      entry
      (file+headline "" "captured")
      "*** %^{Topic} :drill: \n:PROPERTIES:\n:Created: %U\n:END:\n"
      )     ("ss"
      "Statistics Card"
      entry
      (file+headline "" "captured")
      "*** %^{Topic} :drill: \n:PROPERTIES:\n:Created: %U\n:END:\n\n**** %^{Question}\n\n**** Answer"
      )
     ("sp"
      "Programming Card"
      entry
      (file+headline "" "captured")
      "** %^{Topic} :drill: \n:PROPERTIES:\n:Created: %U\n:END:\n\n**** %^{Question}\n\n**** Answer"
      )
     ))

;; setq outlook-hook-script
(setq outlook-hook-script "")

