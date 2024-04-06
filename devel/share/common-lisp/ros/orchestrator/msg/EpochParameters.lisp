; Auto-generated. Do not edit!


(cl:in-package orchestrator-msg)


;//! \htmlinclude EpochParameters.msg.html

(cl:defclass <EpochParameters> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EpochParameters (<EpochParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EpochParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EpochParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name orchestrator-msg:<EpochParameters> is deprecated: use orchestrator-msg:EpochParameters instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EpochParameters>) ostream)
  "Serializes a message object of type '<EpochParameters>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EpochParameters>) istream)
  "Deserializes a message object of type '<EpochParameters>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EpochParameters>)))
  "Returns string type for a message object of type '<EpochParameters>"
  "orchestrator/EpochParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EpochParameters)))
  "Returns string type for a message object of type 'EpochParameters"
  "orchestrator/EpochParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EpochParameters>)))
  "Returns md5sum for a message object of type '<EpochParameters>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EpochParameters)))
  "Returns md5sum for a message object of type 'EpochParameters"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EpochParameters>)))
  "Returns full string definition for message of type '<EpochParameters>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EpochParameters)))
  "Returns full string definition for message of type 'EpochParameters"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EpochParameters>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EpochParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'EpochParameters
))
