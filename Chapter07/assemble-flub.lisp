(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro assemble-flub (form rest)
  `(if (gethash c go-ht)
       (list* (gethash c go-ht)
	      ,form
	      ,rest)
       (list* ,form
	      ,rest)))

