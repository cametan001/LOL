(defpackage :com.blogspot.beta-reduction.anaphoric-macro-system (:use :asdf :cl))
(in-package :com.blogspot.beta-reduction.anaphoric-macro-system)

(defsystem anaphoric-macros
  :name "anaphoric-macros"
  :author ""
  :version ""
  :maintainer ""
  :licence ""
  :description ""
  :long-description ""
  :components
  ((:file "packages")
   (:file "alambda" :depends-on ("packages"))
   (:file "aif" :depends-on ("packages"))
   (:file "sharp-backquote" :depends-on ("packages"))
   (:file "alet-1" :depends-on ("packages"))
   (:file "alet" :depends-on ("packages"))
   (:file "alet-fsm" :depends-on ("packages"))
   (:file "ichain-before" :depends-on ("packages"))
   (:file "ichain-after" :depends-on ("packages"))
   (:file "ichain-intercept-1" :depends-on ("packages"))
   (:file "ichain-intercept" :depends-on ("packages"))
   (:file "alet-hotpatch-1" :depends-on ("packages"))
   (:file "alet-hotpatch" :depends-on ("packages"))
   (:file "let-hotpatch" :depends-on ("packages"))
   (:file "let-binding-transform" :depends-on ("packages"))
   (:file "sublet" :depends-on ("packages" "let-binding-transform"))
   (:file "sublet-star" :depends-on ("packages" "sublet"))
   (:file "pandoriclet" :depends-on ("packages" "let-binding-transform" "pandoriclet-accessors"))
   (:file "pandoriclet-accessors" :depends-on ("packages" "sharp-backquote"))
   (:file "get-pandoric" :depends-on ("packages"))
   (:file "with-pandoric" :depends-on ("packages" "get-pandoric" "sharp-backquote"))
   (:file "pandoric-hotpatch" :depends-on ("packages" "with-pandoric"))
   (:file "pandoric-recode" :depends-on ("packages" "with-pandoric"))
   (:file "plambda" :depends-on ("packages" "pandoriclet-accessors"))
   (:file "make-stats-counter" :depends-on ("packages" "plambda"))
   (:file "defpan" :depends-on ("packages" "with-pandoric"))
   (:file "stats-counter-methods" :depends-on ("packages" "defpan"))
   (:file "make-noisy-stats-counter" :depends-on ("packages" "plambda" "stats-counter-methods"))
   (:file "pandoric-eval" :depends-on ("packages" "with-pandoric" "plambda"))
   )
  :depends-on (:introduction :macro-basics :programs-that-program))

