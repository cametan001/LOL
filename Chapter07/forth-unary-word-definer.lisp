(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro forth-unary-word-definer (&body words)
  `(progn
     ,@(mapcar
	#`(def-forth-prim ,a1 nil
			  (push (,a1 (pop pstack))
				pstack))
	words)))

