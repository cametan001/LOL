(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

;; Graham's alambda
(defmacro alambda (parms &body body)
  `(labels ((self ,parms ,@body))
     #'self))
