; Auto-generated. Do not edit!


(cl:in-package local_planner_student-msg)


;//! \htmlinclude goalMsg.msg.html

(cl:defclass <goalMsg> (roslisp-msg-protocol:ros-message)
  ((goalPose2D
    :reader goalPose2D
    :initarg :goalPose2D
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass goalMsg (<goalMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goalMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goalMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name local_planner_student-msg:<goalMsg> is deprecated: use local_planner_student-msg:goalMsg instead.")))

(cl:ensure-generic-function 'goalPose2D-val :lambda-list '(m))
(cl:defmethod goalPose2D-val ((m <goalMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader local_planner_student-msg:goalPose2D-val is deprecated.  Use local_planner_student-msg:goalPose2D instead.")
  (goalPose2D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goalMsg>) ostream)
  "Serializes a message object of type '<goalMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goalPose2D) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goalMsg>) istream)
  "Deserializes a message object of type '<goalMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goalPose2D) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goalMsg>)))
  "Returns string type for a message object of type '<goalMsg>"
  "local_planner_student/goalMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goalMsg)))
  "Returns string type for a message object of type 'goalMsg"
  "local_planner_student/goalMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goalMsg>)))
  "Returns md5sum for a message object of type '<goalMsg>"
  "21fd91eaa80316a222eef309a3f9438e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goalMsg)))
  "Returns md5sum for a message object of type 'goalMsg"
  "21fd91eaa80316a222eef309a3f9438e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goalMsg>)))
  "Returns full string definition for message of type '<goalMsg>"
  (cl:format cl:nil "geometry_msgs/Pose2D goalPose2D~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goalMsg)))
  "Returns full string definition for message of type 'goalMsg"
  (cl:format cl:nil "geometry_msgs/Pose2D goalPose2D~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goalMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goalPose2D))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goalMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'goalMsg
    (cl:cons ':goalPose2D (goalPose2D msg))
))
