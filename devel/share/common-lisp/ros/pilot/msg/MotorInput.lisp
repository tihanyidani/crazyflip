; Auto-generated. Do not edit!


(cl:in-package pilot-msg)


;//! \htmlinclude MotorInput.msg.html

(cl:defclass <MotorInput> (roslisp-msg-protocol:ros-message)
  ((m1_motor
    :reader m1_motor
    :initarg :m1_motor
    :type cl:float
    :initform 0.0)
   (m2_motor
    :reader m2_motor
    :initarg :m2_motor
    :type cl:float
    :initform 0.0)
   (m3_motor
    :reader m3_motor
    :initarg :m3_motor
    :type cl:float
    :initform 0.0)
   (m4_motor
    :reader m4_motor
    :initarg :m4_motor
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorInput (<MotorInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pilot-msg:<MotorInput> is deprecated: use pilot-msg:MotorInput instead.")))

(cl:ensure-generic-function 'm1_motor-val :lambda-list '(m))
(cl:defmethod m1_motor-val ((m <MotorInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:m1_motor-val is deprecated.  Use pilot-msg:m1_motor instead.")
  (m1_motor m))

(cl:ensure-generic-function 'm2_motor-val :lambda-list '(m))
(cl:defmethod m2_motor-val ((m <MotorInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:m2_motor-val is deprecated.  Use pilot-msg:m2_motor instead.")
  (m2_motor m))

(cl:ensure-generic-function 'm3_motor-val :lambda-list '(m))
(cl:defmethod m3_motor-val ((m <MotorInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:m3_motor-val is deprecated.  Use pilot-msg:m3_motor instead.")
  (m3_motor m))

(cl:ensure-generic-function 'm4_motor-val :lambda-list '(m))
(cl:defmethod m4_motor-val ((m <MotorInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:m4_motor-val is deprecated.  Use pilot-msg:m4_motor instead.")
  (m4_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorInput>) ostream)
  "Serializes a message object of type '<MotorInput>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm1_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm2_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm3_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm4_motor))))
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
    (cl:setf (cl:slot-value msg 'm1_motor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm2_motor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm3_motor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm4_motor) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorInput>)))
  "Returns string type for a message object of type '<MotorInput>"
  "pilot/MotorInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorInput)))
  "Returns string type for a message object of type 'MotorInput"
  "pilot/MotorInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorInput>)))
  "Returns md5sum for a message object of type '<MotorInput>"
  "f292020030bdf5ef91b0fca2e65a2223")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorInput)))
  "Returns md5sum for a message object of type 'MotorInput"
  "f292020030bdf5ef91b0fca2e65a2223")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorInput>)))
  "Returns full string definition for message of type '<MotorInput>"
  (cl:format cl:nil "float64 m1_motor~%float64 m2_motor~%float64 m3_motor~%float64 m4_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorInput)))
  "Returns full string definition for message of type 'MotorInput"
  (cl:format cl:nil "float64 m1_motor~%float64 m2_motor~%float64 m3_motor~%float64 m4_motor~%~%"))
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
    (cl:cons ':m1_motor (m1_motor msg))
    (cl:cons ':m2_motor (m2_motor msg))
    (cl:cons ':m3_motor (m3_motor msg))
    (cl:cons ':m4_motor (m4_motor msg))
))
