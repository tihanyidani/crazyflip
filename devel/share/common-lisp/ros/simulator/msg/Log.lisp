; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude Log.msg.html

(cl:defclass <Log> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (command
    :reader command
    :initarg :command
    :type simulator-msg:Command
    :initform (cl:make-instance 'simulator-msg:Command))
   (measurement
    :reader measurement
    :initarg :measurement
    :type simulator-msg:Measurement
    :initform (cl:make-instance 'simulator-msg:Measurement))
   (motor_input
    :reader motor_input
    :initarg :motor_input
    :type simulator-msg:MotorInput
    :initform (cl:make-instance 'simulator-msg:MotorInput)))
)

(cl:defclass Log (<Log>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Log>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Log)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<Log> is deprecated: use simulator-msg:Log instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:time-val is deprecated.  Use simulator-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:command-val is deprecated.  Use simulator-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'measurement-val :lambda-list '(m))
(cl:defmethod measurement-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:measurement-val is deprecated.  Use simulator-msg:measurement instead.")
  (measurement m))

(cl:ensure-generic-function 'motor_input-val :lambda-list '(m))
(cl:defmethod motor_input-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:motor_input-val is deprecated.  Use simulator-msg:motor_input instead.")
  (motor_input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Log>) ostream)
  "Serializes a message object of type '<Log>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'measurement) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Log>) istream)
  "Deserializes a message object of type '<Log>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'measurement) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Log>)))
  "Returns string type for a message object of type '<Log>"
  "simulator/Log")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Log)))
  "Returns string type for a message object of type 'Log"
  "simulator/Log")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Log>)))
  "Returns md5sum for a message object of type '<Log>"
  "a78651615685e7f7458e421d4bbb39e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Log)))
  "Returns md5sum for a message object of type 'Log"
  "a78651615685e7f7458e421d4bbb39e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Log>)))
  "Returns full string definition for message of type '<Log>"
  (cl:format cl:nil "float64 time~%simulator/Command command~%simulator/Measurement measurement~%simulator/MotorInput motor_input~%================================================================================~%MSG: simulator/Command~%float64 accel~%float64 dd_roll~%================================================================================~%MSG: simulator/Measurement~%float64 x~%float64 y~%float64 z~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: simulator/MotorInput~%float64 motor_1~%float64 motor_2~%float64 motor_3~%float64 motor_4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Log)))
  "Returns full string definition for message of type 'Log"
  (cl:format cl:nil "float64 time~%simulator/Command command~%simulator/Measurement measurement~%simulator/MotorInput motor_input~%================================================================================~%MSG: simulator/Command~%float64 accel~%float64 dd_roll~%================================================================================~%MSG: simulator/Measurement~%float64 x~%float64 y~%float64 z~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: simulator/MotorInput~%float64 motor_1~%float64 motor_2~%float64 motor_3~%float64 motor_4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Log>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'measurement))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Log>))
  "Converts a ROS message object to a list"
  (cl:list 'Log
    (cl:cons ':time (time msg))
    (cl:cons ':command (command msg))
    (cl:cons ':measurement (measurement msg))
    (cl:cons ':motor_input (motor_input msg))
))
