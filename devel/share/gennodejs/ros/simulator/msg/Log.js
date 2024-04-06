// Auto-generated. Do not edit!

// (in-package simulator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Command = require('./Command.js');
let Measurement = require('./Measurement.js');
let MotorInput = require('./MotorInput.js');

//-----------------------------------------------------------

class Log {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.command = null;
      this.measurement = null;
      this.motor_input = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new Command();
      }
      if (initObj.hasOwnProperty('measurement')) {
        this.measurement = initObj.measurement
      }
      else {
        this.measurement = new Measurement();
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
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = Command.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [measurement]
    bufferOffset = Measurement.serialize(obj.measurement, buffer, bufferOffset);
    // Serialize message field [motor_input]
    bufferOffset = MotorInput.serialize(obj.motor_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Log
    let len;
    let data = new Log(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = Command.deserialize(buffer, bufferOffset);
    // Deserialize message field [measurement]
    data.measurement = Measurement.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_input]
    data.motor_input = MotorInput.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator/Log';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a78651615685e7f7458e421d4bbb39e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 time
    simulator/Command command
    simulator/Measurement measurement
    simulator/MotorInput motor_input
    ================================================================================
    MSG: simulator/Command
    float64 accel
    float64 dd_roll
    ================================================================================
    MSG: simulator/Measurement
    float64 x
    float64 y
    float64 z
    float64 roll
    float64 pitch
    float64 yaw
    ================================================================================
    MSG: simulator/MotorInput
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
    const resolved = new Log(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.command !== undefined) {
      resolved.command = Command.Resolve(msg.command)
    }
    else {
      resolved.command = new Command()
    }

    if (msg.measurement !== undefined) {
      resolved.measurement = Measurement.Resolve(msg.measurement)
    }
    else {
      resolved.measurement = new Measurement()
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
