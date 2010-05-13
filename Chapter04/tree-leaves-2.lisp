(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defun tree-leaves%% (tree test result)
  (and tree
       (cond
	 ((consp tree)
	  (cons
	   (tree-leaves%% (car tree) test result)
	   (tree-leaves%% (cdr tree) test result)))
	 ((funcall test tree)
	  (funcall result tree))
	 (t
	  tree))))

