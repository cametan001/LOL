(in-package :cl-user)

(defpackage :com.blogspot.beta-reduction.anaphoric-macros
  (:use :common-lisp :com.blogspot.beta-reduction.introduction :com.blogspot.beta-reduction.macro-basics :com.blogspot.beta-reduction.programs-that-program)
  (:export :alambda
           :aif
           :alet
           :alet-fsm
           :ichain-before
           :ichain-after
           :ichain-intercept
           :alet-hotpatch
           :let-hotpatch
           :sublet
           :sublet*
           :pandoriclet
           :pandoriclet-get
           :pandoriclet-set
           :get-pandoric
           :with-pandoric
           :pandoric-hotpatch
           :pandoric-recode
           :plambda
           :defpan
           :pandoric-eval))
