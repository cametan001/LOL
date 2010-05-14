(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro sublet (bindings% &body body)
  (let ((bindings (let-binding-transform
		   bindings%)))
    (setf bindings
	  (mapcar
	   (lambda (x)
	     (cons (gensym (symbol-name (car x))) x))
	   bindings))
    `(let ,(mapcar #'list
		   (mapcar #'car bindings)
		   (mapcar #'caddr bindings))
       ,@(tree-leaves
	  body
	  #1=(member x bindings :key #'cadr)
	  (caar #1#)))))

