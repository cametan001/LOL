(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defun cxr-symbol-to-cxr-list (s)
  (labels ((collect (lst acc)
	     (if (null lst)
		 (flatten (reverse acc))
		 (collect (cdr lst)
		   (cons `(1 ,(if (char= (car lst) #\A)
				  'A
				  'D)) acc)))))
    (collect
	(cdr				; chop off C
	 (butlast			; chop off R
	  (coerce
	   (symbol-name s)
	   'list))) nil)))

