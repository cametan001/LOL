(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defmacro tree-leaves (tree test result)
  `(tree-leaves%%
    ,tree
    ,@(mapcar #'(lambda (y)
		  `(lambda (x)
		     (declare (ignorable x))
		     ,y)) `(,test ,result))))
