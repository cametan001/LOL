(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro pandoriclet (letargs &body body)
  (let ((letargs (cons
		  '(this)
		  (let-binding-transform
		   letargs))))
    `(let ,letargs
       (setf this ,@(last body))
       ,@(butlast body)
       (dlambda
	 (:pandoric-get (sym)
			,(pandoriclet-get letargs))
	 (:pandoric-set (sym val)
			,(pandoriclet-set letargs))
	 (t (&rest args)
	    (apply this args))))))
