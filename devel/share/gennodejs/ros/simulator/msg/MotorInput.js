// Auto-generated. Do not edit!

// (in-package simulator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_1 = null;
      this.motor_2 = null;
      this.motor_3 = null;
      this.motor_4 = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_1')) {
        this.motor_1 = initObj.motor_1
      }
      else {
        this.motor_1 = 0.0;
      }
      if (initObj.hasOwnProperty('motor_2')) {
        this.motor_2 = initObj.motor_2
      }
      else {
        this.motor_2 = 0.0;
      }
      if (initObj.hasOwnProperty('motor_3')) {
        this.motor_3 = initObj.motor_3
      }
      else {
        this.motor_3 = 0.0;
      }
      if (initObj.hasOwnProperty('motor_4')) {
        this.motor_4 = initObj.motor_4
      }
      else {
        this.motor_4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorInput
    // Serialize message field [motor_1]
    bufferOffset = _serializer.float64(obj.motor_1, buffer, bufferOffset);
    // Serialize message field [motor_2]
    bufferOffset = _serializer.float64(obj.motor_2, buffer, bufferOffset);
    // Serialize message field [motor_3]
    bufferOffset = _serializer.float64(obj.motor_3, buffer, bufferOffset);
    // Serialize message field [motor_4]
    bufferOffset = _serializer.float64(obj.motor_4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorInput
    let len;
    let data = new MotorInput(null);
    // Deserialize message field [motor_1]
    data.motor_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_2]
    data.motor_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_3]
    data.motor_3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_4]
    data.motor_4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator/MotorInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62f1d93821548e9c595f83183ea5f6c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 motor_1
    float64 motor_2
    float64 motor_3
    float64 motor_4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorInput(null);
    if (msg.motor_1 !== undefined) {
      resolved.motor_1 = msg.motor_1;
    }
    else {
      resolved.motor_1 = 0.0
    }

    if (msg.motor_2 !== undefined) {
      resolved.motor_2 = msg.motor_2;
    }
    else {
      resolved.motor_2 = 0.0
    }

    if (msg.motor_3 !== undefined) {
      resolved.motor_3 = msg.motor_3;
    }
    else {
      resolved.motor_3 = 0.0
    }

    if (msg.motor_4 !== undefined) {
      resolved.motor_4 = msg.motor_4;
    }
    else {
      resolved.motor_4 = 0.0
    }

    return resolved;
    }
};

module.exports = MotorInput;
