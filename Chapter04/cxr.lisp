(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defvar *cxr-inline-thresh* 10)

(defmacro! cxr (x tree)
  (if (null x)
      tree
      (let ((head (car x)) (tail (cdr x)))
	(let ((tot (cdr tail)))
	  (let ((op (case (car tail)
		      ((a) 'car)
		      ((d) 'cdr)
		      (otherwise (error "Non A/D symbol")))))
	    (if (and (integerp head)
		     (<= 1 head *cxr-inline-thresh*))
		`(,op (cxr ,(if (= 1 head)
				tot
				(cons (1- head) tail)) ,tree))
		`(nlet-tail
		     ,g!name ((,g!count ,head)
			      (,g!val (cxr ,tot ,tree)))
		   (if (>= 0 ,g!count)
		       ,g!val
		       ;; Will be a tail:
		       (,g!name (1- ,g!count)
				(,op ,g!val))))))))))

