(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defun cxr-symbol-p (s)
  (and (symbolp s)
       (let ((chars (coerce
		     (symbol-name s)
		     'list)))
	 (and
	  (< 6 (length chars))
	  (char= #\C (car chars))
	  (char= #\R (car (last chars)))
	  (null (remove-if
		 (lambda (c)
		   (or (char= c #\A)
		       (char= c #\D)))
		 (cdr (butlast chars))))))))

