(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(forth-stdlib-add
  { 0 swap - } 'negate name
  { dup 0 < if negate then } 'abs name)

