(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defvar pandoric-eval-tunnel)

(defmacro pandoric-eval (vars expr)
  `(let ((pandoric-eval-tunnel
	  (plambda () ,vars t)))
     (eval `(with-pandoric
		,',vars pandoric-eval-tunnel
	      ,,expr))))
