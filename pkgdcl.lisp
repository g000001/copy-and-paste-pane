;;;; -*- Mode: Lisp;-*- 

(cl:in-package cl-user)


(defpackage "https://github.com/g000001/copy-and-paste-pane"
  (:nicknames copy-and-paste-pane)
  (:use)
  (:export 
   copy-and-paste-mixin
   copy-and-paste-menu))


(defpackage "https://github.com/g000001/copy-and-paste-pane#internals"
  (:use "https://github.com/g000001/copy-and-paste-pane" cl capi)
  (:export))


;;; *EOF*
