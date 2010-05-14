(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro! let-hotpatch (letargs &body body)
  `(let ((,g!this) ,@letargs)
     (setf ,g!this ,@(last body))
     ,@(butlast body)
     (dlambda
       (:hotpatch (closure)
		  (setf ,g!this closure))
       (t (&rest args)
	  (apply ,g!this args)))))
