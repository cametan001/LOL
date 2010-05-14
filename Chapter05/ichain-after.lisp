(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro! ichain-after (&body body)
  `(let ((,g!indir-env this))
     (setf this
	   (lambda (&rest ,g!temp-args)
	     (prog1
		 (apply ,g!indir-env
			,g!temp-args)
	       ,@body)))))

