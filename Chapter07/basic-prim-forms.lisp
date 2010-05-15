(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

(def-forth-prim nop nil)

(def-forth-prim * nil
		(push (* (pop pstack) (pop pstack))
		      pstack))

(def-forth-prim drop nil
		(pop pstack))

(def-forth-prim dup nil
		(push (car pstack) pstack))

(def-forth-prim swap nil
		(rotatef (car pstack) (cadr pstack)))

(def-forth-prim print nil
		(print (pop pstack)))

(def-forth-prim >r nil
		(push (pop pstack) rstack))

(def-forth-prim r> nil
		(push (pop rstack) pstack))

