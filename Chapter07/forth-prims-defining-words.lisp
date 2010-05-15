(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(def-forth-prim create nil
		(setf dict (make-forth-word :prev dict)))

(def-forth-prim name nil
		(setf (forth-word-name dict) (pop pstack)))

(def-forth-prim immediate nil
		(setf (forth-word-immediate dict) t))


