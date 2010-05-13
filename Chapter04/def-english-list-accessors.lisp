(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defmacro def-english-list-accessors (start end)
  (if (not (<= 1 start end))
      (error "Bad start/end range")
      `(progn
	 ,@(loop for i from start to end collect
		`(defun
		     ,(symb
		       (map 'string
			    (lambda (c)
			      (if (alpha-char-p c)
				  (char-upcase c)
				  #\-))
			    (format nil "~:r" i)))
		     (arg)
		   (cxr (1 a ,(1- i) d) arg))))))

