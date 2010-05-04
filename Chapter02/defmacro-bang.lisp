(in-package #:com.blogspot.beta-reduction.macro-basics)

(defmacro defmacro! (name args &body body)
  (let ((os (remove-if-not #'o!-symbol-p args)))
    (let ((gs (mapcar #'o!-symbol-to-g!-symbol os)))
      `(defmacro/g! ,name ,args
	 `(let ,(mapcar #'list `(,,@gs) `(,,@os))
	    ,(progn ,@body))))))
