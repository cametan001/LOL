(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(def-forth-prim [ t			; <- t は即値であることを表す
		(setf compiling nil))

(def-forth-prim ] nil			; <- 即値ではない
		(setf compiling t))

