(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defun predicate-splitter (orderp splitp)
  (lambda (a b)
    (let ((s (funcall splitp a)))
      (if (eq s (funcall splitp b))
	  (funcall orderp a b)
	  s))))

