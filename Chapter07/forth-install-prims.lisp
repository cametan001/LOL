(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

;; Prim-form: (name immediate . forms)
(defmacro forth-install-prims ()
  `(progn
     ,@(mapcar
	#`(let ((thread (lambda ()
			  ,@(cddr a1))))
	    (setf dict
		  (make-forth-word
		   :name ',(car a1)
		   :prev dict
		   :immediate ,(cadr a1)
		   :thread thread))
	    (setf (gethash thread dtable)
		  ',(cddr a1)))
	forth-prim-forms)))

