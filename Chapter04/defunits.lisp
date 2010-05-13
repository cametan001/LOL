(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defun defunits-chaining (u units prev &optional (acc 1))
  (if (member u prev)
      (error "~{ ~A^ depends on~}" (cons u prev))
      (let ((spec (find u units :key #'car)))
	(if (null spec)
	    (error "Unknown unit ~A" u)
	    (let ((chain (cadr spec)))
	      (if (numberp chain)
		  (* chain acc)
		  (defunits-chaining (cadr chain)
		      units
		    (cons u prev)
		    (* (car chain) acc))))))))

(defmacro! defunits (quantity base-unit &body units)
  `(defmacro ,(symb 'unit-of- quantity)
       (,g!val ,g!un)
     `(* ,,g!val
	 ,(case ,g!un
		((,base-unit) 1)
		,@(mapcar (lambda (x)
			    `((,(car x))
			      ,(defunits-chaining
				(car x)
				(cons
				 `(,base-unit 1)
				 (group units 2))
				nil)))
			  (group units 2))))))
