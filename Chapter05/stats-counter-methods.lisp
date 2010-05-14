(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defpan stats-counter-mean (sum count)
  (/ sum count))

(defpan stats-counter-variance
    (sum-of-squares sum count)
  (if (< count 2)
      0
      (/ (- sum-of-squares
	    (* sum
	       (stats-counter-mean self)))
	 (1- count))))

(defpan stats-counter-stddev ()
  (sqrt (stats-counter-variance self)))

