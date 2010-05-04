(in-package #:com.blogspot.beta-reduction.macro-basics)

(defmacro nlet (n letargs &body body)
  `(labels ((,n (mapcar #'car letargs)
	      ,@body))
     (,n ,@(mapcar #'cadr letargs))))
