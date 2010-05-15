(defpackage :com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp-system (:use :asdf :cl))
(in-package :com.blogspot.beta-reduction.lisp-moving-forth-moving-lisp-system)

(defsystem lisp-moving-forth-moving-lisp
  :name "lisp-moving-forth-moving-lisp"
  :author ""
  :version ""
  :maintainer ""
  :licence ""
  :description ""
  :long-description ""
  :components
  ((:file "packages")
   (:file "forth-registers" :depends-on ("packages"))
   (:file "forth-word" :depends-on ("packages"))
   (:file "forth-lookup" :depends-on ("packages" "forth-word"))
   (:file "forth-inner-interpreter" :depends-on ("packages" "forth-registers"))
   (:file "prim-forms" :depends-on ("packages" "forth-registers"))
   (:file "basic-prim-forms" :depends-on ("packages" "forth-registers" "prim-forms"))
   (:file "go-forth" :depends-on ("packages"))
   (:file "forth-stdlib" :depends-on ("packages"))
   (:file "new-forth" :depends-on ("packages" "forth-registers" "forth-lookup" "forth-stdlib" "forth-install-prims" "forth-handle-found" "forth-handle-not-found"))
   (:file "forth-install-prims" :depends-on ("packages" "forth-word" "prim-forms"))
   (:file "forth-prims-compilation-control" :depends-on ("packages" "forth-registers" "prim-forms"))
   (:file "forth-compile-in" :depends-on ("packages" "forth-word"))
   (:file "forth-handle-found" :depends-on ("packages" "forth-registers" "forth-word" "forth-inner-interpreter" "forth-compile-in"))
   (:file "forth-handle-not-found" :depends-on ("packages" "forth-registers" "forth-word" "forth-lookup" "forth-compile-in"))
   (:file "forth-prims-defining-words" :depends-on ("packages" "forth-registers" "forth-word" "prim-forms"))
   (:file "forth-start-defining" :depends-on ("packages" "forth-stdlib"))
   (:file "forth-stop-defining" :depends-on ("packages" "forth-stdlib"))
   (:file "memory-prims" :depends-on ("packages" "forth-registers" "prim-forms"))
   (:file "forth-unary-word-definer" :depends-on ("packages" "forth-registers" "prim-forms"))
   (:file "forth-binary-word-definer" :depends-on ("packages" "forth-registers" "prim-forms"))
   (:file "forth-and-lisp-words" :depends-on ("packages" "forth-unary-word-definer" "forth-binary-word-definer"))
   (:file "branch-if" :depends-on ("packages" "forth-registers" "prim-forms"))
   (:file "exit" :depends-on ("packages" "forth-stdlib"))
   (:file "compiler-prims" :depends-on ("packages" "forth-registers" "forth-word" "prim-forms"))
   (:file "if" :depends-on ("packages" "basic-prim-forms" "forth-stdlib" "forth-and-lisp-words" "branch-if" "compiler-prims"))
   (:file "then" :depends-on ("packages" "basic-prim-forms" "forth-stdlib" "compiler-prims"))
   (:file "abs" :depends-on ("packages" "basic-prim-forms" "forth-stdlib" "forth-and-lisp-words" "if" "then"))
   (:file "else" :depends-on ("packages" "basic-prim-forms" "forth-stdlib" "branch-if" "compiler-prims"))
   ;(:file "mod2" :depends-on ("packages" "forth-stdlib" "forth-and-lisp-words" "if" "then" "else"))
   (:file "begin-again" :depends-on ("packages" "basic-prim-forms" "forth-stdlib" "branch-if" "compiler-prims"))
   (:file "print-forth-thread" :depends-on ("packages" "forth-word" "forth-lookup"))
   (:file "flubify-aux" :depends-on ("packages" "forth-registers" "branch-if" "assemble-flub"))
   (:file "assemble-flub" :depends-on ("packages"))
   (:file "flubify" :depends-on ("packages" "flubify-aux"))
   (:file "compile-flubified" :depends-on ("packages"))
   (:file "flubify-thread-shaker" :depends-on ("packages"))
   (:file "forth-to-lisp" :depends-on ("packages" "flubify" "compile-flubified" "flubify-thread-shaker"))
   )
  :depends-on (:macro-basics :anaphoric-macros))