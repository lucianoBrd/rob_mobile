;; Auto-generated. Do not edit!


(when (boundp 'local_planner_student::localGoal)
  (if (not (find-package "LOCAL_PLANNER_STUDENT"))
    (make-package "LOCAL_PLANNER_STUDENT"))
  (shadow 'localGoal (find-package "LOCAL_PLANNER_STUDENT")))
(unless (find-package "LOCAL_PLANNER_STUDENT::LOCALGOAL")
  (make-package "LOCAL_PLANNER_STUDENT::LOCALGOAL"))
(unless (find-package "LOCAL_PLANNER_STUDENT::LOCALGOALREQUEST")
  (make-package "LOCAL_PLANNER_STUDENT::LOCALGOALREQUEST"))
(unless (find-package "LOCAL_PLANNER_STUDENT::LOCALGOALRESPONSE")
  (make-package "LOCAL_PLANNER_STUDENT::LOCALGOALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass local_planner_student::localGoalRequest
  :super ros::object
  :slots (_goalPose2D ))

(defmethod local_planner_student::localGoalRequest
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

(defclass local_planner_student::localGoalResponse
  :super ros::object
  :slots (_possible ))

(defmethod local_planner_student::localGoalResponse
  (:init
   (&key
    ((:possible __possible) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _possible __possible)
   self)
  (:possible
   (&rest __possible)
   (if (keywordp (car __possible))
       (send* _possible __possible)
     (progn
       (if __possible (setq _possible (car __possible)))
       _possible)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _possible
    (send _possible :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _possible
       (send _possible :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _possible
     (send _possible :deserialize buf ptr-) (incf ptr- (send _possible :serialization-length))
   ;;
   self)
  )

(defclass local_planner_student::localGoal
  :super ros::object
  :slots ())

(setf (get local_planner_student::localGoal :md5sum-) "32b6639f4bc895cfbd706c1320b329cd")
(setf (get local_planner_student::localGoal :datatype-) "local_planner_student/localGoal")
(setf (get local_planner_student::localGoal :request) local_planner_student::localGoalRequest)
(setf (get local_planner_student::localGoal :response) local_planner_student::localGoalResponse)

(defmethod local_planner_student::localGoalRequest
  (:response () (instance local_planner_student::localGoalResponse :init)))

(setf (get local_planner_student::localGoalRequest :md5sum-) "32b6639f4bc895cfbd706c1320b329cd")
(setf (get local_planner_student::localGoalRequest :datatype-) "local_planner_student/localGoalRequest")
(setf (get local_planner_student::localGoalRequest :definition-)
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
---
std_msgs/Bool possible


================================================================================
MSG: std_msgs/Bool
")

(setf (get local_planner_student::localGoalResponse :md5sum-) "32b6639f4bc895cfbd706c1320b329cd")
(setf (get local_planner_student::localGoalResponse :datatype-) "local_planner_student/localGoalResponse")
(setf (get local_planner_student::localGoalResponse :definition-)
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
---
std_msgs/Bool possible


================================================================================
MSG: std_msgs/Bool
")



(provide :local_planner_student/localGoal "32b6639f4bc895cfbd706c1320b329cd")


