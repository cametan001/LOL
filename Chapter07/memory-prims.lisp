(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(def-forth-prim @ nil
		  (push (car (pop pstack))
			pstack))

(def-forth-prim ! nil
		(let ((location (pop pstack)))
		  (setf (car location) (pop pstack))))

