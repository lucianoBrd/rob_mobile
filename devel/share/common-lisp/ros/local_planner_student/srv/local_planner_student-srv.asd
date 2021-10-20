
(cl:in-package :asdf)

(defsystem "local_planner_student-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Path" :depends-on ("_package_Path"))
    (:file "_package_Path" :depends-on ("_package"))
    (:file "localGoal" :depends-on ("_package_localGoal"))
    (:file "_package_localGoal" :depends-on ("_package"))
  ))