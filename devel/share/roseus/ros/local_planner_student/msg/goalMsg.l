;; Auto-generated. Do not edit!


(when (boundp 'local_planner_student::goalMsg)
  (if (not (find-package "LOCAL_PLANNER_STUDENT"))
    (make-package "LOCAL_PLANNER_STUDENT"))
  (shadow 'goalMsg (find-package "LOCAL_PLANNER_STUDENT")))
(unless (find-package "LOCAL_PLANNER_STUDENT::GOALMSG")
  (make-package "LOCAL_PLANNER_STUDENT::GOALMSG"))

(in-package "ROS")
;;//! \htmlinclude goalMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass local_planner_student::goalMsg
  :super ros::object
  :slots (_goalPose2D ))

(defmethod local_planner_student::goalMsg
  (:init
   (&key
    ((:goalPose2D __goalPose2D) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _goalPose2D __goalPose2D)
   self)
  (:goalPose2D
   (&rest __goalPose2D)
   (if (keywordp (car __goalPose2D))
       (send* _goalPose2D __goalPose2D)
     (progn
       (if __goalPose2D (setq _goalPose2D (car __goalPose2D)))
       _goalPose2D)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _goalPose2D
    (send _goalPose2D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _goalPose2D
       (send _goalPose2D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _goalPose2D
     (send _goalPose2D :deserialize buf ptr-) (incf ptr- (send _goalPose2D :serialization-length))
   ;;
   self)
  )

(setf (get local_planner_student::goalMsg :md5sum-) "21fd91eaa80316a222eef309a3f9438e")
(setf (get local_planner_student::goalMsg :datatype-) "local_planner_student/goalMsg")
(setf (get local_planner_student::goalMsg :definition-)
      "geometry_msgs/Pose2D goalPose2D

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :local_planner_student/goalMsg "21fd91eaa80316a222eef309a3f9438e")


