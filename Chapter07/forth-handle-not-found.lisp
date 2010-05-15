(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro forth-handle-not-found ()
  `(cond
     ((and (consp v) (eq (car v) 'quote))
      (if compiling
	  (forth-compile-in (cadr v))
	  (push (cadr v) pstack)))
     ((and (consp v) (eq (car v) 'postpone))
      (let ((word (forth-lookup (cadr v) dict)))
	(if (not word)
	    (error "Postpone failed: ~A" (cadr v))
	    (forth-compile-in (forth-word-thread word)))))
     ((symbolp v)
      (error "Word ~A not found" v))
     (t
      (if compiling
	  (forth-compile-in v)
	  (push v pstack)))))

