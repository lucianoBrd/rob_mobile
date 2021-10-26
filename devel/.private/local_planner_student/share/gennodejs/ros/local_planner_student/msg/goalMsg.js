// Auto-generated. Do not edit!

// (in-package local_planner_student.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class goalMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goalPose2D = null;
    }
    else {
      if (initObj.hasOwnProperty('goalPose2D')) {
        this.goalPose2D = initObj.goalPose2D
      }
      else {
        this.goalPose2D = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goalMsg
    // Serialize message field [goalPose2D]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.goalPose2D, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goalMsg
    let len;
    let data = new goalMsg(null);
    // Deserialize message field [goalPose2D]
    data.goalPose2D = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'local_planner_student/goalMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21fd91eaa80316a222eef309a3f9438e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose2D goalPose2D
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goalMsg(null);
    if (msg.goalPose2D !== undefined) {
      resolved.goalPose2D = geometry_msgs.msg.Pose2D.Resolve(msg.goalPose2D)
    }
    else {
      resolved.goalPose2D = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = goalMsg;
