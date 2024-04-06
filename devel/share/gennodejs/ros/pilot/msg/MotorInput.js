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

class MotorInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.m1_motor = null;
      this.m2_motor = null;
      this.m3_motor = null;
      this.m4_motor = null;
    }
    else {
      if (initObj.hasOwnProperty('m1_motor')) {
        this.m1_motor = initObj.m1_motor
      }
      else {
        this.m1_motor = 0.0;
      }
      if (initObj.hasOwnProperty('m2_motor')) {
        this.m2_motor = initObj.m2_motor
      }
      else {
        this.m2_motor = 0.0;
      }
      if (initObj.hasOwnProperty('m3_motor')) {
        this.m3_motor = initObj.m3_motor
      }
      else {
        this.m3_motor = 0.0;
      }
      if (initObj.hasOwnProperty('m4_motor')) {
        this.m4_motor = initObj.m4_motor
      }
      else {
        this.m4_motor = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorInput
    // Serialize message field [m1_motor]
    bufferOffset = _serializer.float64(obj.m1_motor, buffer, bufferOffset);
    // Serialize message field [m2_motor]
    bufferOffset = _serializer.float64(obj.m2_motor, buffer, bufferOffset);
    // Serialize message field [m3_motor]
    bufferOffset = _serializer.float64(obj.m3_motor, buffer, bufferOffset);
    // Serialize message field [m4_motor]
    bufferOffset = _serializer.float64(obj.m4_motor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorInput
    let len;
    let data = new MotorInput(null);
    // Deserialize message field [m1_motor]
    data.m1_motor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m2_motor]
    data.m2_motor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m3_motor]
    data.m3_motor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m4_motor]
    data.m4_motor = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pilot/MotorInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f292020030bdf5ef91b0fca2e65a2223';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 m1_motor
    float64 m2_motor
    float64 m3_motor
    float64 m4_motor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorInput(null);
    if (msg.m1_motor !== undefined) {
      resolved.m1_motor = msg.m1_motor;
    }
    else {
      resolved.m1_motor = 0.0
    }

    if (msg.m2_motor !== undefined) {
      resolved.m2_motor = msg.m2_motor;
    }
    else {
      resolved.m2_motor = 0.0
    }

    if (msg.m3_motor !== undefined) {
      resolved.m3_motor = msg.m3_motor;
    }
    else {
      resolved.m3_motor = 0.0
    }

    if (msg.m4_motor !== undefined) {
      resolved.m4_motor = msg.m4_motor;
    }
    else {
      resolved.m4_motor = 0.0
    }

    return resolved;
    }
};

module.exports = MotorInput;
