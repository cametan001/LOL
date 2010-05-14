(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defun |#`-reader| (stream sub-char numarg)
  (declare (ignore sub-char))
  (unless numarg (setf numarg 1))
  `(lambda ,(loop for i from 1 to numarg
	       collect (symb 'a i))
     ,(funcall
       (get-macro-character #\`) stream nil)))

(set-dispatch-macro-character
 #\# #\` #'|#`-reader|)
