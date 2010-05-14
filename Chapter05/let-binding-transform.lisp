(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defun let-binding-transform (bs)
  (and bs
       (let ((head (car bs)))
	 (cons
	  (cond ((symbolp head)
		 (list head))
		((consp head)
		 head)
		(t
		 (error "Bad let bindings")))
	  (let-binding-transform (cdr bs))))))
