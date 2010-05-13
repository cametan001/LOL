(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defmacro cxr% (x tree)
  (if (null x)
      tree
      (let ((head (car x)) (tail (cdr x)))
	`(,(case (car tail)
		 ((a) 'car)
		 ((d) 'cdr)
		 (othewise (error "Non A/D symbol")))
	   (cxr% ,(if (= 1 head)
		      (cdr tail)
		      (cons (1- head) tail)) ,tree)))))

