; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude MotorInput.msg.html

(cl:defclass <MotorInput> (roslisp-msg-protocol:ros-message)
  ((motor_1
    :reader motor_1
    :initarg :motor_1
    :type cl:float
    :initform 0.0)
   (motor_2
    :reader motor_2
    :initarg :motor_2
    :type cl:float
    :initform 0.0)
   (motor_3
    :reader motor_3
    :initarg :motor_3
    :type cl:float
    :initform 0.0)
   (motor_4
    :reader motor_4
    :initarg :motor_4
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorInput (<MotorInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<MotorInput> is deprecated: use simulator-msg:MotorInput instead.")))

(cl:ensure-generic-function 'motor_1-val :lambda-list '(m))
(cl:defmethod motor_1-val ((m <MotorInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:motor_1-val is deprecated.  Use simulator-msg:motor_1 instead.")
  (motor_1 m))

(cl:ensure-generic-function 'motor_2-val :lambda-list '(m))
(cl:defmethod motor_2-val ((m <MotorInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:motor_2-val is deprecated.  Use simulator-msg:motor_2 instead.")
  (motor_2 m))

(cl:ensure-generic-function 'motor_3-val :lambda-list '(m))
(cl:defmethod motor_3-val ((m <MotorInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:motor_3-val is deprecated.  Use simulator-msg:motor_3 instead.")
  (motor_3 m))

(cl:ensure-generic-function 'motor_4-val :lambda-list '(m))
(cl:defmethod motor_4-val ((m <MotorInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:motor_4-val is deprecated.  Use simulator-msg:motor_4 instead.")
  (motor_4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorInput>) ostream)
  "Serializes a message object of type '<MotorInput>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motor_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorInput>) istream)
  "Deserializes a message object of type '<MotorInput>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_4) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorInput>)))
  "Returns string type for a message object of type '<MotorInput>"
  "simulator/MotorInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorInput)))
  "Returns string type for a message object of type 'MotorInput"
  "simulator/MotorInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorInput>)))
  "Returns md5sum for a message object of type '<MotorInput>"
  "62f1d93821548e9c595f83183ea5f6c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorInput)))
  "Returns md5sum for a message object of type 'MotorInput"
  "62f1d93821548e9c595f83183ea5f6c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorInput>)))
  "Returns full string definition for message of type '<MotorInput>"
  (cl:format cl:nil "float64 motor_1~%float64 motor_2~%float64 motor_3~%float64 motor_4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorInput)))
  "Returns full string definition for message of type 'MotorInput"
  (cl:format cl:nil "float64 motor_1~%float64 motor_2~%float64 motor_3~%float64 motor_4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorInput>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorInput>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorInput
    (cl:cons ':motor_1 (motor_1 msg))
    (cl:cons ':motor_2 (motor_2 msg))
    (cl:cons ':motor_3 (motor_3 msg))
    (cl:cons ':motor_4 (motor_4 msg))
))
