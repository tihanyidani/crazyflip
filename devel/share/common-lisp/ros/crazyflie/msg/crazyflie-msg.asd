
(cl:in-package :asdf)

(defsystem "crazyflie-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Command" :depends-on ("_package_Command"))
    (:file "_package_Command" :depends-on ("_package"))
    (:file "Input" :depends-on ("_package_Input"))
    (:file "_package_Input" :depends-on ("_package"))
    (:file "Measurement" :depends-on ("_package_Measurement"))
    (:file "_package_Measurement" :depends-on ("_package"))
    (:file "PlanAction" :depends-on ("_package_PlanAction"))
    (:file "_package_PlanAction" :depends-on ("_package"))
    (:file "PlanActionFeedback" :depends-on ("_package_PlanActionFeedback"))
    (:file "_package_PlanActionFeedback" :depends-on ("_package"))
    (:file "PlanActionGoal" :depends-on ("_package_PlanActionGoal"))
    (:file "_package_PlanActionGoal" :depends-on ("_package"))
    (:file "PlanActionResult" :depends-on ("_package_PlanActionResult"))
    (:file "_package_PlanActionResult" :depends-on ("_package"))
    (:file "PlanFeedback" :depends-on ("_package_PlanFeedback"))
    (:file "_package_PlanFeedback" :depends-on ("_package"))
    (:file "PlanGoal" :depends-on ("_package_PlanGoal"))
    (:file "_package_PlanGoal" :depends-on ("_package"))
    (:file "PlanResult" :depends-on ("_package_PlanResult"))
    (:file "_package_PlanResult" :depends-on ("_package"))
  ))