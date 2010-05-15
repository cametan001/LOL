(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(def-forth-naked-prim branch-if nil
		      (setf pc (if (pop pstack)
				   (cadr pc)
				   (cddr pc))))

