(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro sublet* (bindings &body body)
  `(sublet ,bindings
     ,@(mapcar #'macroexpand-1 body)))
