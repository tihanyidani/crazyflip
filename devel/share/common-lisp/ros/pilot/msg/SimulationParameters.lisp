; Auto-generated. Do not edit!


(cl:in-package pilot-msg)


;//! \htmlinclude SimulationParameters.msg.html

(cl:defclass <SimulationParameters> (roslisp-msg-protocol:ros-message)
  ((pilot_name
    :reader pilot_name
    :initarg :pilot_name
    :type cl:string
    :initform "")
   (crazyflie_name
    :reader crazyflie_name
    :initarg :crazyflie_name
    :type cl:string
    :initform "")
   (iteration_number
    :reader iteration_number
    :initarg :iteration_number
    :type cl:integer
    :initform 0)
   (init_time
    :reader init_time
    :initarg :init_time
    :type cl:real
    :initform 0)
   (plan
    :reader plan
    :initarg :plan
    :type pilot-msg:Plan
    :initform (cl:make-instance 'pilot-msg:Plan))
   (fly_box
    :reader fly_box
    :initarg :fly_box
    :type pilot-msg:Box
    :initform (cl:make-instance 'pilot-msg:Box))
   (fly_time
    :reader fly_time
    :initarg :fly_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass SimulationParameters (<SimulationParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimulationParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimulationParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pilot-msg:<SimulationParameters> is deprecated: use pilot-msg:SimulationParameters instead.")))

(cl:ensure-generic-function 'pilot_name-val :lambda-list '(m))
(cl:defmethod pilot_name-val ((m <SimulationParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:pilot_name-val is deprecated.  Use pilot-msg:pilot_name instead.")
  (pilot_name m))

(cl:ensure-generic-function 'crazyflie_name-val :lambda-list '(m))
(cl:defmethod crazyflie_name-val ((m <SimulationParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:crazyflie_name-val is deprecated.  Use pilot-msg:crazyflie_name instead.")
  (crazyflie_name m))

(cl:ensure-generic-function 'iteration_number-val :lambda-list '(m))
(cl:defmethod iteration_number-val ((m <SimulationParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:iteration_number-val is deprecated.  Use pilot-msg:iteration_number instead.")
  (iteration_number m))

(cl:ensure-generic-function 'init_time-val :lambda-list '(m))
(cl:defmethod init_time-val ((m <SimulationParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:init_time-val is deprecated.  Use pilot-msg:init_time instead.")
  (init_time m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <SimulationParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:plan-val is deprecated.  Use pilot-msg:plan instead.")
  (plan m))

(cl:ensure-generic-function 'fly_box-val :lambda-list '(m))
(cl:defmethod fly_box-val ((m <SimulationParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:fly_box-val is deprecated.  Use pilot-msg:fly_box instead.")
  (fly_box m))

(cl:ensure-generic-function 'fly_time-val :lambda-list '(m))
(cl:defmethod fly_time-val ((m <SimulationParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pilot-msg:fly_time-val is deprecated.  Use pilot-msg:fly_time instead.")
  (fly_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimulationParameters>) ostream)
  "Serializes a message object of type '<SimulationParameters>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pilot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pilot_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'crazyflie_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'crazyflie_name))
  (cl:let* ((signed (cl:slot-value msg 'iteration_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'init_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'init_time) (cl:floor (cl:slot-value msg 'init_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fly_box) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fly_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimulationParameters>) istream)
  "Deserializes a message object of type '<SimulationParameters>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pilot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pilot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'crazyflie_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'crazyflie_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iteration_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fly_box) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fly_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimulationParameters>)))
  "Returns string type for a message object of type '<SimulationParameters>"
  "pilot/SimulationParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimulationParameters)))
  "Returns string type for a message object of type 'SimulationParameters"
  "pilot/SimulationParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimulationParameters>)))
  "Returns md5sum for a message object of type '<SimulationParameters>"
  "2241c2e7cdde3bba988379111766cc27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimulationParameters)))
  "Returns md5sum for a message object of type 'SimulationParameters"
  "2241c2e7cdde3bba988379111766cc27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimulationParameters>)))
  "Returns full string definition for message of type '<SimulationParameters>"
  (cl:format cl:nil "string pilot_name~%string crazyflie_name~%int32 iteration_number~%time init_time~%pilot/Plan plan~%pilot/Box fly_box~%float64 fly_time~%================================================================================~%MSG: pilot/Plan~%float64[] interval_list~%pilot/Command[] command_list~%================================================================================~%MSG: pilot/Command~%float64 height~%float64 accel~%================================================================================~%MSG: pilot/Box~%float64 x_min~%float64 x_max~%float64 y_min~%float64 y_max~%float64 z_min~%float64 z_max~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimulationParameters)))
  "Returns full string definition for message of type 'SimulationParameters"
  (cl:format cl:nil "string pilot_name~%string crazyflie_name~%int32 iteration_number~%time init_time~%pilot/Plan plan~%pilot/Box fly_box~%float64 fly_time~%================================================================================~%MSG: pilot/Plan~%float64[] interval_list~%pilot/Command[] command_list~%================================================================================~%MSG: pilot/Command~%float64 height~%float64 accel~%================================================================================~%MSG: pilot/Box~%float64 x_min~%float64 x_max~%float64 y_min~%float64 y_max~%float64 z_min~%float64 z_max~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimulationParameters>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pilot_name))
     4 (cl:length (cl:slot-value msg 'crazyflie_name))
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fly_box))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimulationParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'SimulationParameters
    (cl:cons ':pilot_name (pilot_name msg))
    (cl:cons ':crazyflie_name (crazyflie_name msg))
    (cl:cons ':iteration_number (iteration_number msg))
    (cl:cons ':init_time (init_time msg))
    (cl:cons ':plan (plan msg))
    (cl:cons ':fly_box (fly_box msg))
    (cl:cons ':fly_time (fly_time msg))
))
