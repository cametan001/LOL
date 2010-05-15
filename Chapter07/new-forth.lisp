(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defmacro new-forth ()
  `(alet ,forth-registers
     (setf dtable (make-hash-table))
     (forth-install-prims)
     (dolist (v forth-stdlib)
       (funcall this v))
     (plambda (v) ,forth-registers
       (let ((word (forth-lookup v dict)))
	 (if word
	     (forth-handle-found)
	     (forth-handle-not-found))))))

