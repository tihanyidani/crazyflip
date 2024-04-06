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

class SimulationResults {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.has_survived = null;
      this.survival_time = null;
      this.fitness = null;
    }
    else {
      if (initObj.hasOwnProperty('has_survived')) {
        this.has_survived = initObj.has_survived
      }
      else {
        this.has_survived = false;
      }
      if (initObj.hasOwnProperty('survival_time')) {
        this.survival_time = initObj.survival_time
      }
      else {
        this.survival_time = 0.0;
      }
      if (initObj.hasOwnProperty('fitness')) {
        this.fitness = initObj.fitness
      }
      else {
        this.fitness = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimulationResults
    // Serialize message field [has_survived]
    bufferOffset = _serializer.bool(obj.has_survived, buffer, bufferOffset);
    // Serialize message field [survival_time]
    bufferOffset = _serializer.float64(obj.survival_time, buffer, bufferOffset);
    // Serialize message field [fitness]
    bufferOffset = _serializer.float64(obj.fitness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimulationResults
    let len;
    let data = new SimulationResults(null);
    // Deserialize message field [has_survived]
    data.has_survived = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [survival_time]
    data.survival_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fitness]
    data.fitness = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pilot/SimulationResults';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '045f112ef1324231dcc96a1497c5d849';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool has_survived
    float64 survival_time
    float64 fitness
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimulationResults(null);
    if (msg.has_survived !== undefined) {
      resolved.has_survived = msg.has_survived;
    }
    else {
      resolved.has_survived = false
    }

    if (msg.survival_time !== undefined) {
      resolved.survival_time = msg.survival_time;
    }
    else {
      resolved.survival_time = 0.0
    }

    if (msg.fitness !== undefined) {
      resolved.fitness = msg.fitness;
    }
    else {
      resolved.fitness = 0.0
    }

    return resolved;
    }
};

module.exports = SimulationResults;
