(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro! forth-binary-word-definer (&body words)
  `(progn
     ,@(mapcar
	#`(def-forth-prim ,a1 nil
			  (let ((,g!top (pop pstack)))
			    (push (,a1 (pop pstack)
				       ,g!top)
				  pstack)))
	words)))

