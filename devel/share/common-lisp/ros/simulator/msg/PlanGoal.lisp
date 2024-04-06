; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude PlanGoal.msg.html

(cl:defclass <PlanGoal> (roslisp-msg-protocol:ros-message)
  ((interval_list
    :reader interval_list
    :initarg :interval_list
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (command_list
    :reader command_list
    :initarg :command_list
    :type (cl:vector simulator-msg:Command)
   :initform (cl:make-array 0 :element-type 'simulator-msg:Command :initial-element (cl:make-instance 'simulator-msg:Command))))
)

(cl:defclass PlanGoal (<PlanGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<PlanGoal> is deprecated: use simulator-msg:PlanGoal instead.")))

(cl:ensure-generic-function 'interval_list-val :lambda-list '(m))
(cl:defmethod interval_list-val ((m <PlanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:interval_list-val is deprecated.  Use simulator-msg:interval_list instead.")
  (interval_list m))

(cl:ensure-generic-function 'command_list-val :lambda-list '(m))
(cl:defmethod command_list-val ((m <PlanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:command_list-val is deprecated.  Use simulator-msg:command_list instead.")
  (command_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanGoal>) ostream)
  "Serializes a message object of type '<PlanGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'interval_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'interval_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'command_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'command_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanGoal>) istream)
  "Deserializes a message object of type '<PlanGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'interval_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'interval_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'command_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'command_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'simulator-msg:Command))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanGoal>)))
  "Returns string type for a message object of type '<PlanGoal>"
  "simulator/PlanGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanGoal)))
  "Returns string type for a message object of type 'PlanGoal"
  "simulator/PlanGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanGoal>)))
  "Returns md5sum for a message object of type '<PlanGoal>"
  "f4531cf2ab9293bc63bad7d599cfe6cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanGoal)))
  "Returns md5sum for a message object of type 'PlanGoal"
  "f4531cf2ab9293bc63bad7d599cfe6cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanGoal>)))
  "Returns full string definition for message of type '<PlanGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float64[] interval_list~%simulator/Command[] command_list~%~%================================================================================~%MSG: simulator/Command~%float64 accel~%float64 dd_roll~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanGoal)))
  "Returns full string definition for message of type 'PlanGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float64[] interval_list~%simulator/Command[] command_list~%~%================================================================================~%MSG: simulator/Command~%float64 accel~%float64 dd_roll~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'interval_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'command_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanGoal
    (cl:cons ':interval_list (interval_list msg))
    (cl:cons ':command_list (command_list msg))
))
