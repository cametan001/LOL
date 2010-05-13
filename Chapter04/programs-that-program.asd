(defpackage :com.blogspot.beta-reduction.programs-that-program-system (:use :asdf :cl))
(in-package :com.blogspot.beta-reduction.programs-that-program-system)

(defsystem programs-that-program
  :name "programs-that-program"
  :author ""
  :version ""
  :maintainer ""
  :licence ""
  :description ""
  :long-description ""
  :components
  ((:file "packages")
   (:file "defunits-1" :depends-on ("packages"))
   (:file "defunits-chaining-1" :depends-on ("packages"))
   (:file "defunits-2" :depends-on ("packages" "defunits-chaining-1"))
   (:file "defunits" :depends-on ("packages"))
   (:file "unit-of-distance" :depends-on ("packages" "defunits"))
   (:file "tree-leaves-1" :depends-on ("packages"))
   (:file "predicate-splitter" :depends-on ("packages"))
   (:file "tree-leaves-2" :depends-on ("packages"))
   (:file "tree-leaves" :depends-on ("packages" "tree-leaves-2"))
   (:file "nlet-tail" :depends-on ("packages"))
   (:file "cxr-1" :depends-on ("packages"))
   (:file "cxr" :depends-on ("packages" "nlet-tail"))
   (:file "def-english-list-accessors" :depends-on ("packages" "cxr"))
   (:file "cxr-calculator" :depends-on ("packages"))
   (:file "cxr-symbol-p" :depends-on ("packages"))
   (:file "cxr-symbol-to-cxr-list" :depends-on ("packages" "nlet-tail"))
   (:file "with-all-cxrs" :depends-on ("packages" "cxr-symbol-p" "cxr-symbol-to-cxr-list"))
   (:file "dlambda" :depends-on ("packages"))
   )
  :depends-on (:introduction :macro-basics))
