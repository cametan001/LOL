(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro plambda (largs pargs &body body)
  (let ((pargs (mapcar #'list pargs)))
    `(let (this self)
       (setf
	this (lambda ,largs ,@body)
	self (dlambda
	       (:pandoric-get (sym)
			      ,(pandoriclet-get pargs))
	       (:pandoric-set (sym val)
			      ,(pandoriclet-set pargs))
	       (t (&rest args)
		  (apply this args)))))))

