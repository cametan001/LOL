(in-package #:com.blogspot.beta-reduction.anaphoric-macros)

(defun pandoric-hotpatch (box new)
  (with-pandoric (this) box
    (setf this new)))
