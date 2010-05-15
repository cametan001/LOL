(defpackage :com.blogspot.beta-reduction.lol-system (:use :asdf :cl))
(in-package :com.blogspot.beta-reduction.lol-system)

(defsystem lol
    :name "lol"
    :author ""
    :version ""
    :maintainer ""
    :licence ""
    :description ""
    :components
    ((:file "macroexpand-all"))
    :depends-on 
    (:introduction
     :closures
     :macro-basics
     :read-macros
     :programs-that-program
     :anaphoric-macros
     :lisp-moving-forth-moving-lisp
     ))

