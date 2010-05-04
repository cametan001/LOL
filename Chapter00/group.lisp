(in-package #:com.blogspot.beta-reduction.introduction)

(defun group (source n)
  (if (zerop n)
      (error "zero length")
      (labels ((rec (source acc)
		 (let ((rest (nthcdr n source)))
		   (if (consp rest)
		       (rec rest
			    (cons
			     (subseq source 0 n)
			     acc))
		       (nreverse
			(cons source acc))))))
	(and source (rec source nil)))))
