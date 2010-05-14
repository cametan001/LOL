(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro pandoric-recode (vars box new)
  `(with-pandoric (this ,@vars) ,box
     (setf this ,new)))

