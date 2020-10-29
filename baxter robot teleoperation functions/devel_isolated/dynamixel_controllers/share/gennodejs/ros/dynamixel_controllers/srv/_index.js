
"use strict";

let SetCompliancePunch = require('./SetCompliancePunch.js')
let RestartController = require('./RestartController.js')
let SetTorqueLimit = require('./SetTorqueLimit.js')
let SetComplianceSlope = require('./SetComplianceSlope.js')
let StartController = require('./StartController.js')
let StopController = require('./StopController.js')
let SetSpeed = require('./SetSpeed.js')
let SetComplianceMargin = require('./SetComplianceMargin.js')
let TorqueEnable = require('./TorqueEnable.js')

module.exports = {
  SetCompliancePunch: SetCompliancePunch,
  RestartController: RestartController,
  SetTorqueLimit: SetTorqueLimit,
  SetComplianceSlope: SetComplianceSlope,
  StartController: StartController,
  StopController: StopController,
  SetSpeed: SetSpeed,
  SetComplianceMargin: SetComplianceMargin,
  TorqueEnable: TorqueEnable,
};
