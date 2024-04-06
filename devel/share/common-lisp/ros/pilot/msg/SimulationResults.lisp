; Auto-generated. Do not edit!


(cl:in-package pilot-msg)


;//! \htmlinclude SimulationResults.msg.html

(cl:defclass <SimulationResults> (roslisp-msg-protocol:ros-message)
  ((has_survived
    :reader has_survived
    :initarg :has_survived
    :type cl:boolean
    :initform cl:nil)
   (survival_time
    :reader survival_time
    :initarg :survival_time
    :type cl:float
    :initform 0.0)
   (fitness
    :reader fitness
    :initarg :fitness
    :type cl:float
    :initform 0.0))
)

(cl:defclass SimulationResults (<SimulationResults>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimulationResults>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimulationResults)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pilot-msg:<SimulationResults> is deprecated: use pilot-msg:SimulationResults instead.")))

(cl:ensure-generic-function 'has_survived-val :lambda-list '(m))
(cl:defmethod has_survived-val ((m <SimulationResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:has_survived-val is deprecated.  Use pilot-msg:has_survived instead.")
  (has_survived m))

(cl:ensure-generic-function 'survival_time-val :lambda-list '(m))
(cl:defmethod survival_time-val ((m <SimulationResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:survival_time-val is deprecated.  Use pilot-msg:survival_time instead.")
  (survival_time m))

(cl:ensure-generic-function 'fitness-val :lambda-list '(m))
(cl:defmethod fitness-val ((m <SimulationResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:fitness-val is deprecated.  Use pilot-msg:fitness instead.")
  (fitness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimulationResults>) ostream)
  "Serializes a message object of type '<SimulationResults>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_survived) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'survival_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fitness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimulationResults>) istream)
  "Deserializes a message object of type '<SimulationResults>"
    (cl:setf (cl:slot-value msg 'has_survived) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'survival_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fitness) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimulationResults>)))
  "Returns string type for a message object of type '<SimulationResults>"
  "pilot/SimulationResults")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimulationResults)))
  "Returns string type for a message object of type 'SimulationResults"
  "pilot/SimulationResults")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimulationResults>)))
  "Returns md5sum for a message object of type '<SimulationResults>"
  "045f112ef1324231dcc96a1497c5d849")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimulationResults)))
  "Returns md5sum for a message object of type 'SimulationResults"
  "045f112ef1324231dcc96a1497c5d849")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimulationResults>)))
  "Returns full string definition for message of type '<SimulationResults>"
  (cl:format cl:nil "bool has_survived~%float64 survival_time~%float64 fitness~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimulationResults)))
  "Returns full string definition for message of type 'SimulationResults"
  (cl:format cl:nil "bool has_survived~%float64 survival_time~%float64 fitness~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimulationResults>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimulationResults>))
  "Converts a ROS message object to a list"
  (cl:list 'SimulationResults
    (cl:cons ':has_survived (has_survived msg))
    (cl:cons ':survival_time (survival_time msg))
    (cl:cons ':fitness (fitness msg))
))
