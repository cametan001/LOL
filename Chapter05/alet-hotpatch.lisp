(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro alet-hotpatch (letargs &body body)
  `(let ((this) ,@letargs)
     (setf this ,@(last body))
     ,@(butlast body)
     (dlambda
       (:hotpatch (closure)
		  (setf this closure))
       (t (&rest args)
	  (apply this args)))))

