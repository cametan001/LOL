(in-package #:com.blogspot.beta-reduction.macro-basics)

(defun sleep-units% (value unit)
  (sleep
   (* value
      (ecase unit
	((s) 1)
	((m) 60)
	((h) 3600)
	((d) 86400)
	((ms) 1/1000)
	((us) 1/1000000)))))
