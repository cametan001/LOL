(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro! ichain-intercept (&body body)
  `(let ((,g!indir-env this))
     (setf this
	   (lambda (&rest ,g!temp-args)
	     (block ,g!intercept
	       (macrolet ((intercept (v)
			    `(return-from
			      ,',g!intercept
			       ,v)))
		 (prog1
		     (apply ,g!indir-env
			    ,g!temp-args)
		   ,@body)))))))

