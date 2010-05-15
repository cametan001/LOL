(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defun forth-to-lisp (forth word)
  (let ((thread (get-forth-thread forth word))
	(shaker-ht (make-hash-table))
	(prim-ht (make-hash-table))
	(thread-ht (make-hash-table))
	(branch-if (get-forth-thread forth 'branch-if))
	(compile (get-forth-thread forth 'compile)))
    (flubify-thread-shaker
     forth thread shaker-ht
     (make-hash-table) branch-if compile)
    (maphash (lambda (k v)
	       (declare (ignore v))
	       (setf (gethash k prim-ht) (gensym)))
	     shaker-ht)
    (flubify forth thread prim-ht thread-ht branch-if)
    `(let (pstack)
       (let ,(let (collect)
		  (maphash
		   (lambda (k v)
		     (push `(,(gethash k prim-ht)
			      (lambda () ,@(butlast v)))
			   collect))
		   shaker-ht)
		  (nreverse collect))
	 ,(compile-flubified
	   thread thread-ht)))))
