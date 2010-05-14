(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defun pandoriclet-get (letargs)
  `(case sym
     ,@(mapcar #`((,(car a1)) ,(car a1))
	       letargs)
     (otherwise (error
		 "Unknown pandoric get: ~A"
		 sym))))

(defun pandoriclet-set (letargs)
  `(case sym
     ,@(mapcar #`((,(car a1))
		  (setf ,(car a1) val))
	       letargs)
     (otherwise (error
		 "Unknown pandoric set: ~A"
		 sym))))

