(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro! go-forth (o!forth &body words)
  `(dolist (w ',words)
     (funcall ,g!forth w)))
