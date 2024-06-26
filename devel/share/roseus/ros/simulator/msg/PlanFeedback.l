;; Auto-generated. Do not edit!


(when (boundp 'simulator::PlanFeedback)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'PlanFeedback (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::PLANFEEDBACK")
  (make-package "SIMULATOR::PLANFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude PlanFeedback.msg.html


(defclass simulator::PlanFeedback
  :super ros::object
  :slots (_stamp ))

(defmethod simulator::PlanFeedback
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get simulator::PlanFeedback :md5sum-) "84d365d08d5fc49dde870daba1c7992c")
(setf (get simulator::PlanFeedback :datatype-) "simulator/PlanFeedback")
(setf (get simulator::PlanFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
time stamp

")



(provide :simulator/PlanFeedback "84d365d08d5fc49dde870daba1c7992c")


