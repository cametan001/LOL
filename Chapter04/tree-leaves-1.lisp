(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defun tree-leaves% (tree result)
  (and tree
       (if (consp tree)
	   (cons
	    (tree-leaves% (car tree)
			  result)
	    (tree-leaves% (cdr tree)
			  result))
	   result)))

