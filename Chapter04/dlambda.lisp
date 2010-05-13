(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defmacro! dlambda (&body ds)
  `(lambda (&rest ,g!args)
     (case (car ,g!args)
       ,@(mapcar
	  (lambda (d)
	    (let ((head (car d)) (tail (cdr d)))
	      (let ((it (eq t head)))
		`(,(if it it (list head))
		   (apply (lambda ,@tail)
			  ,(if it g!args `(cdr ,g!args)))))))
	  ds))))
