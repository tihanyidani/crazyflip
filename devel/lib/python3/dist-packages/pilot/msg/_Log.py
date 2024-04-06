# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pilot/Log.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import pilot.msg

class Log(genpy.Message):
  _md5sum = "27676e9e67f4024a10a6d61938d7a2ac"
  _type = "pilot/Log"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time stamp
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
float64 m4_motor"""
  __slots__ = ['stamp','measurement','command','motor_input']
  _slot_types = ['time','pilot/Measurement','pilot/Command','pilot/MotorInput']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,measurement,command,motor_input

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Log, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.measurement is None:
        self.measurement = pilot.msg.Measurement()
      if self.command is None:
        self.command = pilot.msg.Command()
      if self.motor_input is None:
        self.motor_input = pilot.msg.MotorInput()
    else:
      self.stamp = genpy.Time()
      self.measurement = pilot.msg.Measurement()
      self.command = pilot.msg.Command()
      self.motor_input = pilot.msg.MotorInput()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2I12d().pack(_x.stamp.secs, _x.stamp.nsecs, _x.measurement.x, _x.measurement.y, _x.measurement.z, _x.measurement.roll, _x.measurement.pitch, _x.measurement.yaw, _x.command.height, _x.command.accel, _x.motor_input.m1_motor, _x.motor_input.m2_motor, _x.motor_input.m3_motor, _x.motor_input.m4_motor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.measurement is None:
        self.measurement = pilot.msg.Measurement()
      if self.command is None:
        self.command = pilot.msg.Command()
      if self.motor_input is None:
        self.motor_input = pilot.msg.MotorInput()
      end = 0
      _x = self
      start = end
      end += 104
      (_x.stamp.secs, _x.stamp.nsecs, _x.measurement.x, _x.measurement.y, _x.measurement.z, _x.measurement.roll, _x.measurement.pitch, _x.measurement.yaw, _x.command.height, _x.command.accel, _x.motor_input.m1_motor, _x.motor_input.m2_motor, _x.motor_input.m3_motor, _x.motor_input.m4_motor,) = _get_struct_2I12d().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I12d().pack(_x.stamp.secs, _x.stamp.nsecs, _x.measurement.x, _x.measurement.y, _x.measurement.z, _x.measurement.roll, _x.measurement.pitch, _x.measurement.yaw, _x.command.height, _x.command.accel, _x.motor_input.m1_motor, _x.motor_input.m2_motor, _x.motor_input.m3_motor, _x.motor_input.m4_motor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.measurement is None:
        self.measurement = pilot.msg.Measurement()
      if self.command is None:
        self.command = pilot.msg.Command()
      if self.motor_input is None:
        self.motor_input = pilot.msg.MotorInput()
      end = 0
      _x = self
      start = end
      end += 104
      (_x.stamp.secs, _x.stamp.nsecs, _x.measurement.x, _x.measurement.y, _x.measurement.z, _x.measurement.roll, _x.measurement.pitch, _x.measurement.yaw, _x.command.height, _x.command.accel, _x.motor_input.m1_motor, _x.motor_input.m2_motor, _x.motor_input.m3_motor, _x.motor_input.m4_motor,) = _get_struct_2I12d().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I12d = None
def _get_struct_2I12d():
    global _struct_2I12d
    if _struct_2I12d is None:
        _struct_2I12d = struct.Struct("<2I12d")
    return _struct_2I12d