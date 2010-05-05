(in-package #:com.blogspot.beta-reduction.read-macros)

(defun |#"-reader| (stream sub-char numarg)
  (declare (ignore sub-char numarg))
  (labels ((iter (chars prev)
	     (let ((curr (read-char stream)))
	       (if (and (char= prev #\") (char= curr #\#))
		   (coerce (reverse chars) 'string)
		   (iter (cons prev chars) curr)))))
    (iter nil (read-char stream))))

(set-dispatch-macro-character
 #\# #\" #'|#"-reader|)
