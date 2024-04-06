// Auto-generated. Do not edit!

// (in-package pilot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Plan = require('./Plan.js');
let Box = require('./Box.js');

//-----------------------------------------------------------

class SimulationParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pilot_name = null;
      this.crazyflie_name = null;
      this.iteration_number = null;
      this.init_time = null;
      this.plan = null;
      this.fly_box = null;
      this.fly_time = null;
    }
    else {
      if (initObj.hasOwnProperty('pilot_name')) {
        this.pilot_name = initObj.pilot_name
      }
      else {
        this.pilot_name = '';
      }
      if (initObj.hasOwnProperty('crazyflie_name')) {
        this.crazyflie_name = initObj.crazyflie_name
      }
      else {
        this.crazyflie_name = '';
      }
      if (initObj.hasOwnProperty('iteration_number')) {
        this.iteration_number = initObj.iteration_number
      }
      else {
        this.iteration_number = 0;
      }
      if (initObj.hasOwnProperty('init_time')) {
        this.init_time = initObj.init_time
      }
      else {
        this.init_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = new Plan();
      }
      if (initObj.hasOwnProperty('fly_box')) {
        this.fly_box = initObj.fly_box
      }
      else {
        this.fly_box = new Box();
      }
      if (initObj.hasOwnProperty('fly_time')) {
        this.fly_time = initObj.fly_time
      }
      else {
        this.fly_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimulationParameters
    // Serialize message field [pilot_name]
    bufferOffset = _serializer.string(obj.pilot_name, buffer, bufferOffset);
    // Serialize message field [crazyflie_name]
    bufferOffset = _serializer.string(obj.crazyflie_name, buffer, bufferOffset);
    // Serialize message field [iteration_number]
    bufferOffset = _serializer.int32(obj.iteration_number, buffer, bufferOffset);
    // Serialize message field [init_time]
    bufferOffset = _serializer.time(obj.init_time, buffer, bufferOffset);
    // Serialize message field [plan]
    bufferOffset = Plan.serialize(obj.plan, buffer, bufferOffset);
    // Serialize message field [fly_box]
    bufferOffset = Box.serialize(obj.fly_box, buffer, bufferOffset);
    // Serialize message field [fly_time]
    bufferOffset = _serializer.float64(obj.fly_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimulationParameters
    let len;
    let data = new SimulationParameters(null);
    // Deserialize message field [pilot_name]
    data.pilot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [crazyflie_name]
    data.crazyflie_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [iteration_number]
    data.iteration_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [init_time]
    data.init_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [plan]
    data.plan = Plan.deserialize(buffer, bufferOffset);
    // Deserialize message field [fly_box]
    data.fly_box = Box.deserialize(buffer, bufferOffset);
    // Deserialize message field [fly_time]
    data.fly_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pilot_name);
    length += _getByteLength(object.crazyflie_name);
    length += Plan.getMessageSize(object.plan);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pilot/SimulationParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2241c2e7cdde3bba988379111766cc27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pilot_name
    string crazyflie_name
    int32 iteration_number
    time init_time
    pilot/Plan plan
    pilot/Box fly_box
    float64 fly_time
    ================================================================================
    MSG: pilot/Plan
    float64[] interval_list
    pilot/Command[] command_list
    ================================================================================
    MSG: pilot/Command
    float64 height
    float64 accel
    ================================================================================
    MSG: pilot/Box
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
    const resolved = new SimulationParameters(null);
    if (msg.pilot_name !== undefined) {
      resolved.pilot_name = msg.pilot_name;
    }
    else {
      resolved.pilot_name = ''
    }

    if (msg.crazyflie_name !== undefined) {
      resolved.crazyflie_name = msg.crazyflie_name;
    }
    else {
      resolved.crazyflie_name = ''
    }

    if (msg.iteration_number !== undefined) {
      resolved.iteration_number = msg.iteration_number;
    }
    else {
      resolved.iteration_number = 0
    }

    if (msg.init_time !== undefined) {
      resolved.init_time = msg.init_time;
    }
    else {
      resolved.init_time = {secs: 0, nsecs: 0}
    }

    if (msg.plan !== undefined) {
      resolved.plan = Plan.Resolve(msg.plan)
    }
    else {
      resolved.plan = new Plan()
    }

    if (msg.fly_box !== undefined) {
      resolved.fly_box = Box.Resolve(msg.fly_box)
    }
    else {
      resolved.fly_box = new Box()
    }

    if (msg.fly_time !== undefined) {
      resolved.fly_time = msg.fly_time;
    }
    else {
      resolved.fly_time = 0.0
    }

    return resolved;
    }
};

module.exports = SimulationParameters;
