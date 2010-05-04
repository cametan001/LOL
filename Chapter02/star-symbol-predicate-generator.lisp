(in-package #:com.blogspot.beta-reduction.macro-basics)

(defmacro *-symbol-p-generator (str)
  (let ((len (length str))
	(init-part (string-upcase str)))
    `(defun ,(intern (concatenate 'string init-part "-SYMBOL-P")) (s)
       (and (symbolp s)
	    (> (length (symbol-name s)) ,len)
	    (string= (symbol-name s)
		     ,init-part
		     :start1 0
		     :end1 ,len)))))
