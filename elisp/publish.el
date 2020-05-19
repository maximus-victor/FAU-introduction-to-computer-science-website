;;; publish.el --- Publish reveal.js presentation from Org files
;; -*- Mode: Emacs-Lisp -*-
;; -*- coding: utf-8 -*-

;; Copyright (C) 2017-2020 Jens Lechtenbörger
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Code:
;; Avoid update of emacs-reveal, enable stacktraces.
(setq emacs-reveal-managed-install-p nil
      debug-on-error t)

;; Set up load-path.
(let ((install-dir
       (mapconcat #'file-name-as-directory
                  `(,user-emacs-directory "elpa" "emacs-reveal") "")))
  (add-to-list 'load-path install-dir)
  (condition-case nil
      ;; Either require package with above hard-coded location
      ;; (e.g., in docker) ...
      (require 'emacs-reveal)
    (error
     ;; ... or look for sibling "emacs-reveal".
     (add-to-list
      'load-path
      (expand-file-name "../../emacs-reveal/" (file-name-directory load-file-name)))
     (require 'emacs-reveal))))

;; Decide later whether to use minted.  Needs python-pygments in Docker image.
;; (require 'ox-latex)
;; (setq org-latex-listings 'minted)
;; (add-to-list 'org-latex-packages-alist '("newfloat" "minted"))

(setq oer-reveal-publish-makeindex t)

;; Publish reveal.js presentations.
(oer-reveal-publish-all
 (list
 ;  (list "texts"
 ;       	:base-directory "texts"
 ;       	:base-extension "org"
 ;       	:publishing-function '(org-latex-publish-to-pdf)
 ;       	:publishing-directory "./public/texts")
 ;  (list "orgs"
 ;       	:base-directory "org-resources"
 ;       	:base-extension "org"
 ;       	:publishing-function 'org-publish-attachment
 ;       	:publishing-directory "./public/org-resources")
 ;  (list "index-terms"
	; :base-directory "."
	; ;; A file theindex.org (which includes theindex.inc)
	; ;; is created due to assignment to
	; ;; oer-reveal-publish-makeindex above.
	; ;; Using that setting, the file is automatically published with
	; ;; org-re-reveal, which is useless.
	; ;; Thus, publish as HTML here.  For this to work, index-terms.org
	; ;; is a manually created file including theindex.inc.
	; ;; The preparation and completion functions below set up an
	; ;; advice on org-html-link to rewrite links into presentations
	; ;; using org-re-reveal's anchor format.
	; :include '("index-terms.org")
	; :exclude ".*"
	; :preparation-function 'oer-reveal--add-advice-link
	; :completion-function 'oer-reveal--remove-advice-link
	; :publishing-function '(org-html-publish-to-html)
	; :publishing-directory "./public")
  (list "images"
	:base-directory "img"
	:base-extension (regexp-opt '("png" "jpg" "ico" "svg" "gif"))
	:publishing-directory "./public/img"
	:publishing-function 'org-publish-attachment
	:recursive t)
  (list "style"
	:base-directory "css"
	:base-extension (regexp-opt '("css"))
	:publishing-directory "./public/css"
	:publishing-function 'org-publish-attachment
	:recursive t)
  (list "conf"
	:base-directory "config"
	:base-extension (regexp-opt '("org"))
	:publishing-directory "./public/config"
	:publishing-function 'org-publish-attachment
	:recursive t)
  ))
;;; publish.el ends here
