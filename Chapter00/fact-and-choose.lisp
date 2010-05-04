(in-package #:com.blogspot.beta-reduction.introduction)

(defun fact (x &optional (acc 1))
  (if (zerop x)
      acc
      (fact (1- x) (* x acc))))

(defun choose (n r)
  (/ (fact n)
     (fact (- n r))
     (fact r)))
