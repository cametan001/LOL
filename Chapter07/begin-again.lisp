(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(forth-stdlib-add
  { compile nop
  here } 'begin name immediate
  { compile 't
  compile branch-if
  compile nop
  here ! } 'again name immediate)

