(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defun cxr-calculator (n)
  (loop for i from 1 to n
     sum (expt 2 i)))
