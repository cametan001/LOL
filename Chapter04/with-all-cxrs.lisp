(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defmacro with-all-cxrs (&body forms)
  `(labels
       ,(mapcar
	 (lambda (s)
	   `(,s (l)
		(cxr ,(cxr-symbol-to-cxr-list s)
		     l)))
	 (remove-duplicates
	  (remove-if-not
	   #'cxr-symbol-p
	   (flatten forms))))
     ,@forms))

