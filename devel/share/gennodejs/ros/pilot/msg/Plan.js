// Auto-generated. Do not edit!

// (in-package pilot.msg)


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
      this.interval_list = null;
      this.command_list = null;
    }
    else {
      if (initObj.hasOwnProperty('interval_list')) {
        this.interval_list = initObj.interval_list
      }
      else {
        this.interval_list = [];
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
    // Serialize message field [interval_list]
    bufferOffset = _arraySerializer.float64(obj.interval_list, buffer, bufferOffset, null);
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
    // Deserialize message field [interval_list]
    data.interval_list = _arrayDeserializer.float64(buffer, bufferOffset, null)
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
    length += 8 * object.interval_list.length;
    length += 16 * object.command_list.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pilot/Plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84241112053e41dc4c45b618502e3991';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] interval_list
    pilot/Command[] command_list
    ================================================================================
    MSG: pilot/Command
    float64 height
    float64 accel
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Plan(null);
    if (msg.interval_list !== undefined) {
      resolved.interval_list = msg.interval_list;
    }
    else {
      resolved.interval_list = []
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
