(in-package #:com.blogspot.beta-reduction.macro-basics)

(defmacro! nif (o!expr pos zero neg)
  `(cond ((plusp ,g!expr) ,pos)
	 ((zerop ,g!expr) ,zero)
	 (t ,neg)))
