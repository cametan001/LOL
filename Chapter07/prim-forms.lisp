(in-package #:com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp)

;; Prim-form: (name immediate . forms)

(defvar forth-prim-forms nil)

(defmacro def-forth-naked-prim (&body code)
  `(push ',code forth-prim-forms))

(defmacro def-forth-prim (&body code)
  `(def-forth-naked-prim
     ,@code
     (setf pc (cdr pc))))

