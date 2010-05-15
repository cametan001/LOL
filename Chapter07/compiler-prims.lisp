(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(def-forth-naked-prim compile nil
		      (setf (forth-word-thread dict)
			    (nconc (forth-word-thread dict)
				   (list (cadr pc))))
		      (setf pc (cddr pc)))

(def-forth-prim here nil
		(push (last (forth-word-thread dict))
		      pstack))

