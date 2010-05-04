(defpackage :com.blogspot.beta-reduction.closure-system (:use :asdf :cl))
(in-package :com.blogspot.beta-reduction.closure-system)

(defsystem closures
  :name "closures"
  :author ""
  :version ""
  :maintainer ""
  :licence ""
  :description ""
  :long-description ""
  :components
  ((:file "packages")
   (:file "block-scanner" :depends-on ("packages"))))
