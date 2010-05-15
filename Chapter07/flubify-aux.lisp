(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro flubify-aux ()
  `(alambda (c)
     (if c
	 (cond
	   ((gethash (car c) prim-ht)
	    (assemble-flub
	     `(funcall
	       ,(gethash (car c) prim-ht))
	     (self (cdr c))))
	   ((gethash (car c) thread-ht)
	    (assemble-flub
	     `(funcall #',(car (gethash (car c)
					thread-ht)))
	     (self (cdr c))))
	   ((eq (car c) branch-if)
	    (assemble-flub
	     `(if (pop pstack)
		  (go ,(gethash (cadr c) go-ht)))
	     (self (cddr c))))
	   ((consp (car c))
	    (flubify forth (car c) prim-ht
		     thread-ht branch-if)
	    (self c))
	   (t
	    (assemble-flub
	     `(push ',(car c) pstack)
	     (self (cdr c))))))))

