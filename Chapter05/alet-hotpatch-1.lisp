(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro alet-hotpatch% (letargs &body body)
  `(let ((this) ,@letargs)
     (setf this ,@(last body))
     ,@(butlast body)
     (lambda (&rest args)
       (if (eq (car args) ':hotpatch)
	   (setf this (cadr args))
	   (apply this args)))))

