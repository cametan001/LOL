(in-package :cl-user)

(defpackage :com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp
  (:use :common-lisp :com.blogspot.beta-reduction.macro-basics :com.blogspot.beta-reduction.anaphoric-macros)
  (:export :go-forth
           :new-forth
           :print-forth-thread
           :forth-to-lisp))
