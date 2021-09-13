;;;; -*- Mode: Lisp;-*- 


(cl:in-package "https://github.com/g000001/copy-and-paste-pane#internals")


(define-interface copy-and-paste-mixin ()
  ()
  (:menu-bar copy-and-paste-menu)
  (:menus
   (copy-and-paste-menu 
    "Edit"
    (standard-edit-component selection-component)
    :callback-type :interface)
   (standard-edit-component
    :component
    (("Cut" :callback #'active-pane-cut :enabled-function #'active-pane-cut-p)
     ("Copy" :callback #'active-pane-copy :enabled-function #'active-pane-copy-p)
     ("Paste" :callback #'active-pane-paste :enabled-function #'active-pane-paste-p)
     ("Undo" :callback #'active-pane-undo :enabled-function #'active-pane-undo-p)))
   (selection-component :component
                        (("Select All" :callback #'active-pane-select-all)))))


;;; *EOF*
