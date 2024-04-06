// Auto-generated. Do not edit!

// (in-package crazyflie.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Command = require('./Command.js');

//-----------------------------------------------------------

class Plan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_interval_list = null;
      this.command_list = null;
    }
    else {
      if (initObj.hasOwnProperty('time_interval_list')) {
        this.time_interval_list = initObj.time_interval_list
      }
      else {
        this.time_interval_list = [];
      }
      if (initObj.hasOwnProperty('command_list')) {
        this.command_list = initObj.command_list
      }
      else {
        this.command_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Plan
    // Serialize message field [time_interval_list]
    bufferOffset = _arraySerializer.float64(obj.time_interval_list, buffer, bufferOffset, null);
    // Serialize message field [command_list]
    // Serialize the length for message field [command_list]
    bufferOffset = _serializer.uint32(obj.command_list.length, buffer, bufferOffset);
    obj.command_list.forEach((val) => {
      bufferOffset = Command.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Plan
    let len;
    let data = new Plan(null);
    // Deserialize message field [time_interval_list]
    data.time_interval_list = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [command_list]
    // Deserialize array length for message field [command_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.command_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.command_list[i] = Command.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.time_interval_list.length;
    length += 32 * object.command_list.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'crazyflie/Plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '854ef745f169476b519c78ce5b33349d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] time_interval_list
    crazyflie/Command[] command_list
    ================================================================================
    MSG: crazyflie/Command
    float64 accel
    float64 roll
    float64 pitch
    float64 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Plan(null);
    if (msg.time_interval_list !== undefined) {
      resolved.time_interval_list = msg.time_interval_list;
    }
    else {
      resolved.time_interval_list = []
    }

    if (msg.command_list !== undefined) {
      resolved.command_list = new Array(msg.command_list.length);
      for (let i = 0; i < resolved.command_list.length; ++i) {
        resolved.command_list[i] = Command.Resolve(msg.command_list[i]);
      }
    }
    else {
      resolved.command_list = []
    }

    return resolved;
    }
};

module.exports = Plan;
