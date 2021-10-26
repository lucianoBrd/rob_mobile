; Auto-generated. Do not edit!


(cl:in-package local_planner_student-srv)


;//! \htmlinclude localGoal-request.msg.html

(cl:defclass <localGoal-request> (roslisp-msg-protocol:ros-message)
  ((goalPose2D
    :reader goalPose2D
    :initarg :goalPose2D
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass localGoal-request (<localGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name local_planner_student-srv:<localGoal-request> is deprecated: use local_planner_student-srv:localGoal-request instead.")))

(cl:ensure-generic-function 'goalPose2D-val :lambda-list '(m))
(cl:defmethod goalPose2D-val ((m <localGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader local_planner_student-srv:goalPose2D-val is deprecated.  Use local_planner_student-srv:goalPose2D instead.")
  (goalPose2D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localGoal-request>) ostream)
  "Serializes a message object of type '<localGoal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goalPose2D) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localGoal-request>) istream)
  "Deserializes a message object of type '<localGoal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goalPose2D) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localGoal-request>)))
  "Returns string type for a service object of type '<localGoal-request>"
  "local_planner_student/localGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localGoal-request)))
  "Returns string type for a service object of type 'localGoal-request"
  "local_planner_student/localGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localGoal-request>)))
  "Returns md5sum for a message object of type '<localGoal-request>"
  "32b6639f4bc895cfbd706c1320b329cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localGoal-request)))
  "Returns md5sum for a message object of type 'localGoal-request"
  "32b6639f4bc895cfbd706c1320b329cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localGoal-request>)))
  "Returns full string definition for message of type '<localGoal-request>"
  (cl:format cl:nil "geometry_msgs/Pose2D goalPose2D~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localGoal-request)))
  "Returns full string definition for message of type 'localGoal-request"
  (cl:format cl:nil "geometry_msgs/Pose2D goalPose2D~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localGoal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goalPose2D))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'localGoal-request
    (cl:cons ':goalPose2D (goalPose2D msg))
))
;//! \htmlinclude localGoal-response.msg.html

(cl:defclass <localGoal-response> (roslisp-msg-protocol:ros-message)
  ((possible
    :reader possible
    :initarg :possible
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass localGoal-response (<localGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name local_planner_student-srv:<localGoal-response> is deprecated: use local_planner_student-srv:localGoal-response instead.")))

(cl:ensure-generic-function 'possible-val :lambda-list '(m))
(cl:defmethod possible-val ((m <localGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader local_planner_student-srv:possible-val is deprecated.  Use local_planner_student-srv:possible instead.")
  (possible m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localGoal-response>) ostream)
  "Serializes a message object of type '<localGoal-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'possible) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localGoal-response>) istream)
  "Deserializes a message object of type '<localGoal-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'possible) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localGoal-response>)))
  "Returns string type for a service object of type '<localGoal-response>"
  "local_planner_student/localGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localGoal-response)))
  "Returns string type for a service object of type 'localGoal-response"
  "local_planner_student/localGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localGoal-response>)))
  "Returns md5sum for a message object of type '<localGoal-response>"
  "32b6639f4bc895cfbd706c1320b329cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localGoal-response)))
  "Returns md5sum for a message object of type 'localGoal-response"
  "32b6639f4bc895cfbd706c1320b329cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localGoal-response>)))
  "Returns full string definition for message of type '<localGoal-response>"
  (cl:format cl:nil "std_msgs/Bool possible~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localGoal-response)))
  "Returns full string definition for message of type 'localGoal-response"
  (cl:format cl:nil "std_msgs/Bool possible~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localGoal-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'possible))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'localGoal-response
    (cl:cons ':possible (possible msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'localGoal)))
  'localGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'localGoal)))
  'localGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localGoal)))
  "Returns string type for a service object of type '<localGoal>"
  "local_planner_student/localGoal")