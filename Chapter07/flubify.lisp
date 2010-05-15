(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defun flubify (forth thread prim-ht
		thread-ht branch-if)
  (unless #1=(gethash thread thread-ht)
	  (setf #1# (list (gensym)))
	  (let ((go-ht (make-hash-table)))
	    (funcall
	     (alambda (c)
	       (when c
		 (cond
		   ((eq (car c) branch-if)
		    (setf (gethash (cadr c) go-ht)
			  (gensym))
		    (self (cddr c)))
		   ((consp (car c))
		    (flubify forth thread prim-ht
			     thread-ht branch-if)))
		 (self (cdr c))))
	     thread)
	    (setf #1# (nconc #1# (funcall
				  (flubify-aux)
				  thread))))))

