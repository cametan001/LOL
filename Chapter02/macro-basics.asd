(defpackage :com.blogspot.beta-reduction.macro-basic-system (:use :asdf :cl))
(in-package :com.blogspot.beta-reduction.macro-basic-system)

(defsystem macro-basics
  :name "macro-basics"
  :author ""
  :version ""
  :maintainer ""
  :licence ""
  :description ""
  :long-description ""
  :components
  ((:file "packages")
   (:file "sleep-units-1" :depends-on ("packages"))
   (:file "sleep-units" :depends-on ("packages"))
   (:file "unit-of-time" :depends-on ("packages"))
   (:file "nlet" :depends-on ("packages"))
   (:file "star-symbol-predicate-generator" :depends-on ("packages"))
   (:file "g-bang-symbol-predicate" :depends-on ("packages" "star-symbol-predicate-generator"))
   (:file "defmacro-with-g-bang" :depends-on ("packages" "g-bang-symbol-predicate"))
   (:file "o-bang-symbols" :depends-on ("packages" "star-symbol-predicate-generator"))
   (:file "defmacro-bang" :depends-on ("packages" "o-bang-symbols" "defmacro-with-g-bang")))
  :depends-on (:introduction))
