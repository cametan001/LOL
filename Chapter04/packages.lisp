(in-package :cl-user)

(defpackage :com.blogspot.beta-reduction.programs-that-program
  (:use :common-lisp :com.blogspot.beta-reduction.introduction :com.blogspot.beta-reduction.macro-basics)
  (:export :defunits
           :distance
           :predicate-splitter
           :tree-leaves
           :nlet-tail
           :cxr
           :def-english-list-accessors
           :cxr-calculator
           :with-all-cxrs
           :dlambda))
