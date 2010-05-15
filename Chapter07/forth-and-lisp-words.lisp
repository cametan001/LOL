(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(forth-unary-word-definer
  not car cdr cadr caddr cadddr
  oddp evenp)
(forth-binary-word-definer
  eq equal + - / = < > <= >=
  max min and or)

