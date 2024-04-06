// Auto-generated. Do not edit!

// (in-package pilot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Measurement = require('./Measurement.js');
let Command = require('./Command.js');
let MotorInput = require('./MotorInput.js');

//-----------------------------------------------------------

class Log {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.measurement = null;
      this.command = null;
      this.motor_input = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('measurement')) {
        this.measurement = initObj.measurement
      }
      else {
        this.measurement = new Measurement();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new Command();
      }
      if (initObj.hasOwnProperty('motor_input')) {
        this.motor_input = initObj.motor_input
      }
      else {
        this.motor_input = new MotorInput();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Log
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [measurement]
    bufferOffset = Measurement.serialize(obj.measurement, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = Command.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [motor_input]
    bufferOffset = MotorInput.serialize(obj.motor_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Log
    let len;
    let data = new Log(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [measurement]
    data.measurement = Measurement.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = Command.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_input]
    data.motor_input = MotorInput.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pilot/Log';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27676e9e67f4024a10a6d61938d7a2ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    pilot/Measurement measurement
    pilot/Command command
    pilot/MotorInput motor_input
    ================================================================================
    MSG: pilot/Measurement
    float64 x
    float64 y
    float64 z
    float64 roll
    float64 pitch
    float64 yaw
    ================================================================================
    MSG: pilot/Command
    float64 height
    float64 accel
    ================================================================================
    MSG: pilot/MotorInput
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
    const resolved = new Log(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.measurement !== undefined) {
      resolved.measurement = Measurement.Resolve(msg.measurement)
    }
    else {
      resolved.measurement = new Measurement()
    }

    if (msg.command !== undefined) {
      resolved.command = Command.Resolve(msg.command)
    }
    else {
      resolved.command = new Command()
    }

    if (msg.motor_input !== undefined) {
      resolved.motor_input = MotorInput.Resolve(msg.motor_input)
    }
    else {
      resolved.motor_input = new MotorInput()
    }

    return resolved;
    }
};

module.exports = Log;
