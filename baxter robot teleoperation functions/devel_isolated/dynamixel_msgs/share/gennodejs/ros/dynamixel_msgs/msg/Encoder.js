// Auto-generated. Do not edit!

// (in-package dynamixel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.encoders = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('encoders')) {
        this.encoders = initObj.encoders
      }
      else {
        this.encoders = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoder
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Check that the constant length array field [encoders] has the right length
    if (obj.encoders.length !== 3) {
      throw new Error('Unable to serialize array field encoders - length must be 3')
    }
    // Serialize message field [encoders]
    bufferOffset = _arraySerializer.uint16(obj.encoders, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoder
    let len;
    let data = new Encoder(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [encoders]
    data.encoders = _arrayDeserializer.uint16(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dynamixel_msgs/Encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c3d81a65c121e8aec105f07700f8bd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 timestamp   # encoder state is at this time
    uint16[3] encoders   # value of the encoder state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Encoder(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.encoders !== undefined) {
      resolved.encoders = msg.encoders;
    }
    else {
      resolved.encoders = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = Encoder;
