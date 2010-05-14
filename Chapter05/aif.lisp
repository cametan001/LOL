(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

;; Graham が実装した aif
(defmacro aif (test then &optional else)
  `(let ((it ,test))
     (if it ,then ,else)))
