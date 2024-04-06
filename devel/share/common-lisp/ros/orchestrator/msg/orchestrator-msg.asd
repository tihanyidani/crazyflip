
(cl:in-package :asdf)

(defsystem "orchestrator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EpochParameters" :depends-on ("_package_EpochParameters"))
    (:file "_package_EpochParameters" :depends-on ("_package"))
  ))