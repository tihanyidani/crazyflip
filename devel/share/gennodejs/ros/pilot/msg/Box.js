// Auto-generated. Do not edit!

// (in-package pilot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Box {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_min = null;
      this.x_max = null;
      this.y_min = null;
      this.y_max = null;
      this.z_min = null;
      this.z_max = null;
    }
    else {
      if (initObj.hasOwnProperty('x_min')) {
        this.x_min = initObj.x_min
      }
      else {
        this.x_min = 0.0;
      }
      if (initObj.hasOwnProperty('x_max')) {
        this.x_max = initObj.x_max
      }
      else {
        this.x_max = 0.0;
      }
      if (initObj.hasOwnProperty('y_min')) {
        this.y_min = initObj.y_min
      }
      else {
        this.y_min = 0.0;
      }
      if (initObj.hasOwnProperty('y_max')) {
        this.y_max = initObj.y_max
      }
      else {
        this.y_max = 0.0;
      }
      if (initObj.hasOwnProperty('z_min')) {
        this.z_min = initObj.z_min
      }
      else {
        this.z_min = 0.0;
      }
      if (initObj.hasOwnProperty('z_max')) {
        this.z_max = initObj.z_max
      }
      else {
        this.z_max = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Box
    // Serialize message field [x_min]
    bufferOffset = _serializer.float64(obj.x_min, buffer, bufferOffset);
    // Serialize message field [x_max]
    bufferOffset = _serializer.float64(obj.x_max, buffer, bufferOffset);
    // Serialize message field [y_min]
    bufferOffset = _serializer.float64(obj.y_min, buffer, bufferOffset);
    // Serialize message field [y_max]
    bufferOffset = _serializer.float64(obj.y_max, buffer, bufferOffset);
    // Serialize message field [z_min]
    bufferOffset = _serializer.float64(obj.z_min, buffer, bufferOffset);
    // Serialize message field [z_max]
    bufferOffset = _serializer.float64(obj.z_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Box
    let len;
    let data = new Box(null);
    // Deserialize message field [x_min]
    data.x_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_max]
    data.x_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_min]
    data.y_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_max]
    data.y_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_min]
    data.z_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_max]
    data.z_max = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pilot/Box';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad99bb284c3254d76796e1b66efe44bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x_min
    float64 x_max
    float64 y_min
    float64 y_max
    float64 z_min
    float64 z_max
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Box(null);
    if (msg.x_min !== undefined) {
      resolved.x_min = msg.x_min;
    }
    else {
      resolved.x_min = 0.0
    }

    if (msg.x_max !== undefined) {
      resolved.x_max = msg.x_max;
    }
    else {
      resolved.x_max = 0.0
    }

    if (msg.y_min !== undefined) {
      resolved.y_min = msg.y_min;
    }
    else {
      resolved.y_min = 0.0
    }

    if (msg.y_max !== undefined) {
      resolved.y_max = msg.y_max;
    }
    else {
      resolved.y_max = 0.0
    }

    if (msg.z_min !== undefined) {
      resolved.z_min = msg.z_min;
    }
    else {
      resolved.z_min = 0.0
    }

    if (msg.z_max !== undefined) {
      resolved.z_max = msg.z_max;
    }
    else {
      resolved.z_max = 0.0
    }

    return resolved;
    }
};

module.exports = Box;
