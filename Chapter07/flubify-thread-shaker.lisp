(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defun flubify-thread-shaker
    (forth thread ht tmp-ht branch-if compile)
  (if (gethash thread tmp-ht)
      (return-from flubify-thread-shaker)
      (setf (gethash thread tmp-ht) t))
  (cond
    ((and (consp thread) (eq (car thread) branch-if))
     (if (cddr thread)
	 (flubify-thread-shaker
	  forth (cddr thread) ht
		      tmp-ht branch-if compile)))
    ((and (consp thread) (eq (car thread) compile))
     (error "Can't convert compiling word to lisp"))
    ((consp thread)
     (flubify-thread-shaker
      forth (car thread) ht
      tmp-ht branch-if compile)
     (if (cdr thread)
	 (flubify-thread-shaker
	  forth (cdr thread) ht
	  tmp-ht branch-if compile)))
    ((not (gethash thread ht))
     (if (functionp thread)
	 (setf (gethash thread ht)
	       (with-pandoric (dtable) forth
		 (gethash thread dtable)))))))

