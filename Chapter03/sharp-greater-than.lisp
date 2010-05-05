(in-package #:com.blogspot.beta-reduction.read-macros)

(defun |#>-reader| (stream sub-char numarg)
  (declare (ignore sub-char numarg))
  (labels ((foo (chars curr)
	     (if (char= #\newline curr)
		 (reverse chars)
		 (foo (cons curr chars) (read-char stream))))
	   (bar (curr pattern pointer output)
	     (if (null pointer)
		 (reverse (nthcdr (length pattern) output))
		 (bar (read-char stream) pattern
		      (if (char= (car pointer) curr)
			  (cdr pointer)
			  pattern) (cons curr output)))))
    (let ((pattern (foo nil (read-char stream))))
      (coerce (bar (read-char stream) pattern pattern nil) 'string))))

(set-dispatch-macro-character
 #\# #\> #'|#>-reader|)
