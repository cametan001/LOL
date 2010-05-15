(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defvar forth-stdlib nil)

(defmacro forth-stdlib-add (&body all)
  `(setf forth-stdlib
	 (nconc forth-stdlib
		',all)))

