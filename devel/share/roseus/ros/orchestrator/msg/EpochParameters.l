;; Auto-generated. Do not edit!


(when (boundp 'orchestrator::EpochParameters)
  (if (not (find-package "ORCHESTRATOR"))
    (make-package "ORCHESTRATOR"))
  (shadow 'EpochParameters (find-package "ORCHESTRATOR")))
(unless (find-package "ORCHESTRATOR::EPOCHPARAMETERS")
  (make-package "ORCHESTRATOR::EPOCHPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude EpochParameters.msg.html


(defclass orchestrator::EpochParameters
  :super ros::object
  :slots ())

(defmethod orchestrator::EpochParameters
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get orchestrator::EpochParameters :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get orchestrator::EpochParameters :datatype-) "orchestrator/EpochParameters")
(setf (get orchestrator::EpochParameters :definition-)
      "
")



(provide :orchestrator/EpochParameters "d41d8cd98f00b204e9800998ecf8427e")


