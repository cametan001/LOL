(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro forth-inner-interpreter ()
  `(do ((head (car pc) (car pc))
	(tail (cdr pc) (cdr pc)))
       ((and (null pc) (null rstack)))
     (cond
       ((functionp head)
	(funcall head))
       ((consp head)
	(push tail rstack)
	(setf pc head))
       ((null pc)
	(setf pc (pop rstack)))
       (t
	(push head pstack)
	(setf pc tail)))))

