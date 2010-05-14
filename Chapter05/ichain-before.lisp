(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro! ichain-before (&body body)
  `(let ((,g!indir-env this))
     (setf this
	   (lambda (&rest ,g!temp-args)
	     ,@body
	     (apply ,g!indir-env
		    ,g!temp-args)))))

