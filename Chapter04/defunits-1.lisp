(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defmacro! defunits% (quantity base-unit &body units)
  `(defmacro ,(symb 'unit-of- quantity) (,g!val ,g!un)
     `(* ,,g!val
	 ,(case ,g!un
		((,base-unit) 1)
		,@(mapcar (lambda (x)
			    `((,(car x)) ,(cadr x)))
			  (group units 2))))))
