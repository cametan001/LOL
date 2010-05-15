(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defun compile-flubified (thread thread-ht)
  `(labels ,(let (collect)
		 (maphash
		  (lambda (k v)
		    (declare (ignore k))
		    (push
		     `(,(car v) ()
			(tagbody ,@(cdr v)))
		     collect))
		  thread-ht)
		 (nreverse collect))
     (funcall #',(car (gethash thread thread-ht)))))

