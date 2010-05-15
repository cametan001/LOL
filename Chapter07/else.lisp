(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(forth-stdlib-add
  { compile 't
  compile branch-if
  compile nop
  compile swap
  compile nop
  here swap ! } 'else name immediate)

