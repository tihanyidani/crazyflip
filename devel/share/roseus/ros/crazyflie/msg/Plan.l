;; Auto-generated. Do not edit!


(when (boundp 'crazyflie::Plan)
  (if (not (find-package "CRAZYFLIE"))
    (make-package "CRAZYFLIE"))
  (shadow 'Plan (find-package "CRAZYFLIE")))
(unless (find-package "CRAZYFLIE::PLAN")
  (make-package "CRAZYFLIE::PLAN"))

(in-package "ROS")
;;//! \htmlinclude Plan.msg.html


(defclass crazyflie::Plan
  :super ros::object
  :slots (_time_interval_list _command_list ))

(defmethod crazyflie::Plan
  (:init
   (&key
    ((:time_interval_list __time_interval_list) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:command_list __command_list) ())
    )
   (send-super :init)
   (setq _time_interval_list __time_interval_list)
   (setq _command_list __command_list)
   self)
  (:time_interval_list
   (&optional __time_interval_list)
   (if __time_interval_list (setq _time_interval_list __time_interval_list)) _time_interval_list)
  (:command_list
   (&rest __command_list)
   (if (keywordp (car __command_list))
       (send* _command_list __command_list)
     (progn
       (if __command_list (setq _command_list (car __command_list)))
       _command_list)))
  (:serialization-length
   ()
   (+
    ;; float64[] _time_interval_list
    (* 8    (length _time_interval_list)) 4
    ;; crazyflie/Command[] _command_list
    (apply #'+ (send-all _command_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _time_interval_list
     (write-long (length _time_interval_list) s)
     (dotimes (i (length _time_interval_list))
       (sys::poke (elt _time_interval_list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; crazyflie/Command[] _command_list
     (write-long (length _command_list) s)
     (dolist (elem _command_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _time_interval_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_interval_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time_interval_list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; crazyflie/Command[] _command_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _command_list (let (r) (dotimes (i n) (push (instance crazyflie::Command :init) r)) r))
     (dolist (elem- _command_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get crazyflie::Plan :md5sum-) "854ef745f169476b519c78ce5b33349d")
(setf (get crazyflie::Plan :datatype-) "crazyflie/Plan")
(setf (get crazyflie::Plan :definition-)
      "float64[] time_interval_list
crazyflie/Command[] command_list
================================================================================
MSG: crazyflie/Command
float64 accel
float64 roll
float64 pitch
float64 yaw
")



(provide :crazyflie/Plan "854ef745f169476b519c78ce5b33349d")


