(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro forth-compile-in (v)
  `(setf (forth-word-thread dict)
	 (nconc (forth-word-thread dict)
		`(,,v))))

