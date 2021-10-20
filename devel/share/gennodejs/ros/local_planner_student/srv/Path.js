// Auto-generated. Do not edit!

// (in-package local_planner_student.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pathToGoal = null;
    }
    else {
      if (initObj.hasOwnProperty('pathToGoal')) {
        this.pathToGoal = initObj.pathToGoal
      }
      else {
        this.pathToGoal = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathRequest
    // Serialize message field [pathToGoal]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.pathToGoal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathRequest
    let len;
    let data = new PathRequest(null);
    // Deserialize message field [pathToGoal]
    data.pathToGoal = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.pathToGoal);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'local_planner_student/PathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd15b8f26d46fc8067e3578120a749195';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path pathToGoal
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathRequest(null);
    if (msg.pathToGoal !== undefined) {
      resolved.pathToGoal = nav_msgs.msg.Path.Resolve(msg.pathToGoal)
    }
    else {
      resolved.pathToGoal = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

class PathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathResponse
    // Serialize message field [success]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathResponse
    let len;
    let data = new PathResponse(null);
    // Deserialize message field [success]
    data.success = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'local_planner_student/PathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f31cb2e813cfb0e488c574c3b5d9dbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool success
    
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathResponse(null);
    if (msg.success !== undefined) {
      resolved.success = std_msgs.msg.Bool.Resolve(msg.success)
    }
    else {
      resolved.success = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = {
  Request: PathRequest,
  Response: PathResponse,
  md5sum() { return '7a70c4b6b34405650650e53c84f8e094'; },
  datatype() { return 'local_planner_student/Path'; }
};
