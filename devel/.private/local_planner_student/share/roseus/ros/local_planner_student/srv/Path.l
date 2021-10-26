;; Auto-generated. Do not edit!


(when (boundp 'local_planner_student::Path)
  (if (not (find-package "LOCAL_PLANNER_STUDENT"))
    (make-package "LOCAL_PLANNER_STUDENT"))
  (shadow 'Path (find-package "LOCAL_PLANNER_STUDENT")))
(unless (find-package "LOCAL_PLANNER_STUDENT::PATH")
  (make-package "LOCAL_PLANNER_STUDENT::PATH"))
(unless (find-package "LOCAL_PLANNER_STUDENT::PATHREQUEST")
  (make-package "LOCAL_PLANNER_STUDENT::PATHREQUEST"))
(unless (find-package "LOCAL_PLANNER_STUDENT::PATHRESPONSE")
  (make-package "LOCAL_PLANNER_STUDENT::PATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass local_planner_student::PathRequest
  :super ros::object
  :slots (_pathToGoal ))

(defmethod local_planner_student::PathRequest
  (:init
   (&key
    ((:pathToGoal __pathToGoal) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _pathToGoal __pathToGoal)
   self)
  (:pathToGoal
   (&rest __pathToGoal)
   (if (keywordp (car __pathToGoal))
       (send* _pathToGoal __pathToGoal)
     (progn
       (if __pathToGoal (setq _pathToGoal (car __pathToGoal)))
       _pathToGoal)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _pathToGoal
    (send _pathToGoal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _pathToGoal
       (send _pathToGoal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _pathToGoal
     (send _pathToGoal :deserialize buf ptr-) (incf ptr- (send _pathToGoal :serialization-length))
   ;;
   self)
  )

(defclass local_planner_student::PathResponse
  :super ros::object
  :slots (_success ))

(defmethod local_planner_student::PathResponse
  (:init
   (&key
    ((:success __success) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&rest __success)
   (if (keywordp (car __success))
       (send* _success __success)
     (progn
       (if __success (setq _success (car __success)))
       _success)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _success
    (send _success :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _success
       (send _success :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _success
     (send _success :deserialize buf ptr-) (incf ptr- (send _success :serialization-length))
   ;;
   self)
  )

(defclass local_planner_student::Path
  :super ros::object
  :slots ())

(setf (get local_planner_student::Path :md5sum-) "7a70c4b6b34405650650e53c84f8e094")
(setf (get local_planner_student::Path :datatype-) "local_planner_student/Path")
(setf (get local_planner_student::Path :request) local_planner_student::PathRequest)
(setf (get local_planner_student::Path :response) local_planner_student::PathResponse)

(defmethod local_planner_student::PathRequest
  (:response () (instance local_planner_student::PathResponse :init)))

(setf (get local_planner_student::PathRequest :md5sum-) "7a70c4b6b34405650650e53c84f8e094")
(setf (get local_planner_student::PathRequest :datatype-) "local_planner_student/PathRequest")
(setf (get local_planner_student::PathRequest :definition-)
      "nav_msgs/Path pathToGoal

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
std_msgs/Bool success


================================================================================
MSG: std_msgs/Bool
")

(setf (get local_planner_student::PathResponse :md5sum-) "7a70c4b6b34405650650e53c84f8e094")
(setf (get local_planner_student::PathResponse :datatype-) "local_planner_student/PathResponse")
(setf (get local_planner_student::PathResponse :definition-)
      "nav_msgs/Path pathToGoal

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
std_msgs/Bool success


================================================================================
MSG: std_msgs/Bool
")



(provide :local_planner_student/Path "7a70c4b6b34405650650e53c84f8e094")


