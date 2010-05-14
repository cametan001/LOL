(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro! with-pandoric (syms o!box &body body)
  `(symbol-macrolet
       ,(mapcar #`(,a1 (get-pandoric ,g!box ',a1))
		syms)
     ,@body))

