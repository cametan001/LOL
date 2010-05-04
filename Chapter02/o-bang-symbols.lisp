(in-package #:com.blogspot.beta-reduction.macro-basics)

(*-symbol-p-generator "o!")

(defun o!-symbol-to-g!-symbol (s)
  (symb "G!"
	(subseq (symbol-name s) 2)))
