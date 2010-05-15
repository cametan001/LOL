(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(defun get-forth-thread (forth word)
  (with-pandoric (dict) forth
    (forth-word-thread
     (forth-lookup word dict))))

(defun print-forth-thread (forth word)
  (let ((*print-circle* t))
    (print (get-forth-thread forth word))
    t))

