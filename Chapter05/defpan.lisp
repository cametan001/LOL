(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro defpan (name args &body body)
  `(defun ,name (self)
     ,(if args
	  `(with-pandoric ,args self
	     ,@body)
	  `(progn ,@body))))

