(defpackage :com.blogspot.beta-reduction.introduction-system (:use :asdf :cl))
(in-package :com.blogspot.beta-reduction.introduction-system)

(defsystem introduction
  :name "introduction"
  :author ""
  :version ""
  :maintainer ""
  :licence ""
  :description ""
  :long-description ""
  :components
  ((:file "packages")
   (:file "mkstr-symb" :depends-on ("packages"))
   (:file "group" :depends-on ("packages"))
   (:file "flatten" :depends-on ("packages"))
   (:file "fact-and-choose" :depends-on ("packages"))))
