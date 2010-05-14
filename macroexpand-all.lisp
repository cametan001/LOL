(in-package #:cl-user)

(defun macroexpand-all (form)
  #+allegro (excl::walk form)
  #+sbcl (let ((sb-walker:*walk-form-expand-macros-p* t))
	   (sb-walker:walk-form form))
  #+clisp (ext:expand-form form)	   
  #+cmu (walker:macroexpand-all form)
  #-(or allegro sbcl clisp cmu) (error "Not implemented"))
