(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defun make-noisy-stats-counter
    (&key (count 0)
     (sum 0)
     (sum-of-squares 0))
  (plambda (n) (sum count sum-of-squares)
    (incf sum-of-squares (expt n 2))
    (incf sum n)
    (incf count)

    (format t
	    "~&MEAN=~A~%VAR=~A~%STDDEV=~A~%"
	    (stats-counter-mean self)
	    (stats-counter-variance self)
	    (stats-counter-stddev self))))

