(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro forth-handle-found ()
  `(if (and compiling
	    (not (forth-word-immediate word)))
       (forth-compile-in (forth-word-thread word))
       (progn
	 (setf pc (list (forth-word-thread word)))
	 (forth-inner-interpreter))))

