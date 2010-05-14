(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defun make-stats-counter
    (&key (count 0)
     (sum 0)
     (sum-of-squares))
  (plambda (n) (sum count sum-of-squares)
    (incf sum-of-squares (expt n 2))
    (incf sum n)
    (incf count)))

