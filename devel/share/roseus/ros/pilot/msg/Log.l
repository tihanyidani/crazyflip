;; Auto-generated. Do not edit!


(when (boundp 'pilot::Log)
  (if (not (find-package "PILOT"))
    (make-package "PILOT"))
  (shadow 'Log (find-package "PILOT")))
(unless (find-package "PILOT::LOG")
  (make-package "PILOT::LOG"))

(in-package "ROS")
;;//! \htmlinclude Log.msg.html


(defclass pilot::Log
  :super ros::object
  :slots (_stamp _measurement _command _motor_input ))

(defmethod pilot::Log
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:measurement __measurement) (instance pilot::Measurement :init))
    ((:command __command) (instance pilot::Command :init))
    ((:motor_input __motor_input) (instance pilot::MotorInput :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _measurement __measurement)
   (setq _command __command)
   (setq _motor_input __motor_input)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:measurement
   (&rest __measurement)
   (if (keywordp (car __measurement))
       (send* _measurement __measurement)
     (progn
       (if __measurement (setq _measurement (car __measurement)))
       _measurement)))
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:motor_input
   (&rest __motor_input)
   (if (keywordp (car __motor_input))
       (send* _motor_input __motor_input)
     (progn
       (if __motor_input (setq _motor_input (car __motor_input)))
       _motor_input)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; pilot/Measurement _measurement
    (send _measurement :serialization-length)
    ;; pilot/Command _command
    (send _command :serialization-length)
    ;; pilot/MotorInput _motor_input
    (send _motor_input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; pilot/Measurement _measurement
       (send _measurement :serialize s)
     ;; pilot/Command _command
       (send _command :serialize s)
     ;; pilot/MotorInput _motor_input
       (send _motor_input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pilot/Measurement _measurement
     (send _measurement :deserialize buf ptr-) (incf ptr- (send _measurement :serialization-length))
   ;; pilot/Command _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;; pilot/MotorInput _motor_input
     (send _motor_input :deserialize buf ptr-) (incf ptr- (send _motor_input :serialization-length))
   ;;
   self)
  )

(setf (get pilot::Log :md5sum-) "27676e9e67f4024a10a6d61938d7a2ac")
(setf (get pilot::Log :datatype-) "pilot/Log")
(setf (get pilot::Log :definition-)
      "time stamp
pilot/Measurement measurement
pilot/Command command
pilot/MotorInput motor_input
================================================================================
MSG: pilot/Measurement
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
================================================================================
MSG: pilot/Command
float64 height
float64 accel
================================================================================
MSG: pilot/MotorInput
float64 m1_motor
float64 m2_motor
float64 m3_motor
float64 m4_motor
")



(provide :pilot/Log "27676e9e67f4024a10a6d61938d7a2ac")


