; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude PlanResult.msg.html

(cl:defclass <PlanResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlanResult (<PlanResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<PlanResult> is deprecated: use simulator-msg:PlanResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlanResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:success-val is deprecated.  Use simulator-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanResult>) ostream)
  "Serializes a message object of type '<PlanResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanResult>) istream)
  "Deserializes a message object of type '<PlanResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanResult>)))
  "Returns string type for a message object of type '<PlanResult>"
  "simulator/PlanResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanResult)))
  "Returns string type for a message object of type 'PlanResult"
  "simulator/PlanResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanResult>)))
  "Returns md5sum for a message object of type '<PlanResult>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanResult)))
  "Returns md5sum for a message object of type 'PlanResult"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanResult>)))
  "Returns full string definition for message of type '<PlanResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanResult)))
  "Returns full string definition for message of type 'PlanResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanResult
    (cl:cons ':success (success msg))
))
