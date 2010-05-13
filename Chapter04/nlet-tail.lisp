(in-package #:com.blogspot.beta-reduction.programs-that-program)

(defmacro! nlet-tail (n letargs &body body)
  (let ((gs (loop for i in letargs
	       collect (gensym))))
    `(macrolet
	 ((,n ,gs
	    `(progn
	       (psetq
		,@(apply #'nconc
			 (mapcar
			  #'list
			  ',(mapcar #'car letargs)
			  (list ,@gs))))
	       (go ,',g!n))))
       (block ,g!b
	 (let ,letargs
	   (tagbody
	      ,g!n (return-from
		    ,g!b (progn ,@body))))))))

