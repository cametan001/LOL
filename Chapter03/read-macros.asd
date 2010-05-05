(defpackage :com.blogspot.beta-reduction.read-macro-system (:use :asdf :cl))
(in-package :com.blogspot.beta-reduction.read-macro-system)

(defsystem read-macros
  :name "read-macros"
  :author ""
  :version ""
  :maintainer ""
  :licence ""
  :description ""
  :long-description ""
  :components
  ((:file "packages")
   (:file "sharp-double-quote" :depends-on ("packages"))
   (:file "sharp-greater-than" :depends-on ("packages"))
   (:file "segment-reader" :depends-on ("packages"))
   (:file "match-modes" :depends-on ("packages"))
   (:file "cl-ppcre-reader" :depends-on ("packages" "segment-reader"))
   (:file "cyclic-p" :depends-on ("packages"))
   (:file "safe-read-from-string" :depends-on ("packages")))
  :depends-on (:cl-ppcre :macro-basics))
