(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defun cxr-symbol-to-cxr-list (s)
  (nlet-tail collect ((lst (cdr
			    (butlast
			     (coerce
			      (symbol-name s)
			      'List))))
		      (acc nil))
    (if (null lst)
	(flatten (reverse acc))
	(collect (cdr lst) (cons `(1 ,(if (char= (car lst) #\A)
					  'A
					  'D)) acc)))))

