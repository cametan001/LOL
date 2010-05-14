(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro alet% (letargs &body body)
  `(let ((this) ,@letargs)
     (setf this ,@(last body))
     ,@(butlast body)
     this))
