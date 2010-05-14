(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defmacro alet-fsm (&body states)
  `(macrolet ((state (s)
		`(setf this #',s)))
     (labels ,states #',(caar states))))
