(in-package #:com.blogspot.beta-reduction.closures)

(defun block-scanner (trigger-string)
  (let ((trig (coerce trigger-string 'list)))
    (let ((curr trig))
      (lambda (data-string)
	(let ((data (coerce data-string 'list)))
	  (dolist (c data (null curr))	;return t if found
	    (and curr
		 (setf curr
		       (if (char= (car curr) c)
			   (cdr curr)	;next char
			   trig))))))))) ;start over
