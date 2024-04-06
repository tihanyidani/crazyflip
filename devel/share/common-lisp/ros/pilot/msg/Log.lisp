; Auto-generated. Do not edit!


(cl:in-package pilot-msg)


;//! \htmlinclude Log.msg.html

(cl:defclass <Log> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (measurement
    :reader measurement
    :initarg :measurement
    :type pilot-msg:Measurement
    :initform (cl:make-instance 'pilot-msg:Measurement))
   (command
    :reader command
    :initarg :command
    :type pilot-msg:Command
    :initform (cl:make-instance 'pilot-msg:Command))
   (motor_input
    :reader motor_input
    :initarg :motor_input
    :type pilot-msg:MotorInput
    :initform (cl:make-instance 'pilot-msg:MotorInput)))
)

(cl:defclass Log (<Log>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Log>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Log)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pilot-msg:<Log> is deprecated: use pilot-msg:Log instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:stamp-val is deprecated.  Use pilot-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'measurement-val :lambda-list '(m))
(cl:defmethod measurement-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:measurement-val is deprecated.  Use pilot-msg:measurement instead.")
  (measurement m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:command-val is deprecated.  Use pilot-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'motor_input-val :lambda-list '(m))
(cl:defmethod motor_input-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:motor_input-val is deprecated.  Use pilot-msg:motor_input instead.")
  (motor_input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Log>) ostream)
  "Serializes a message object of type '<Log>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'measurement) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Log>) istream)
  "Deserializes a message object of type '<Log>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'measurement) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Log>)))
  "Returns string type for a message object of type '<Log>"
  "pilot/Log")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Log)))
  "Returns string type for a message object of type 'Log"
  "pilot/Log")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Log>)))
  "Returns md5sum for a message object of type '<Log>"
  "27676e9e67f4024a10a6d61938d7a2ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Log)))
  "Returns md5sum for a message object of type 'Log"
  "27676e9e67f4024a10a6d61938d7a2ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Log>)))
  "Returns full string definition for message of type '<Log>"
  (cl:format cl:nil "time stamp~%pilot/Measurement measurement~%pilot/Command command~%pilot/MotorInput motor_input~%================================================================================~%MSG: pilot/Measurement~%float64 x~%float64 y~%float64 z~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: pilot/Command~%float64 height~%float64 accel~%================================================================================~%MSG: pilot/MotorInput~%float64 m1_motor~%float64 m2_motor~%float64 m3_motor~%float64 m4_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Log)))
  "Returns full string definition for message of type 'Log"
  (cl:format cl:nil "time stamp~%pilot/Measurement measurement~%pilot/Command command~%pilot/MotorInput motor_input~%================================================================================~%MSG: pilot/Measurement~%float64 x~%float64 y~%float64 z~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: pilot/Command~%float64 height~%float64 accel~%================================================================================~%MSG: pilot/MotorInput~%float64 m1_motor~%float64 m2_motor~%float64 m3_motor~%float64 m4_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Log>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'measurement))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Log>))
  "Converts a ROS message object to a list"
  (cl:list 'Log
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':measurement (measurement msg))
    (cl:cons ':command (command msg))
    (cl:cons ':motor_input (motor_input msg))
))
