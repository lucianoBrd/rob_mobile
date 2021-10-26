
(cl:in-package :asdf)

(defsystem "local_planner_student-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "goalMsg" :depends-on ("_package_goalMsg"))
    (:file "_package_goalMsg" :depends-on ("_package"))
  ))