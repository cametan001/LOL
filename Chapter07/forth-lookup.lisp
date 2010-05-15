(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defun forth-lookup (w last)
  (and last
       (if (eql (forth-word-name last) w)
	   last
	   (forth-lookup
	    w (forth-word-prev last)))))
