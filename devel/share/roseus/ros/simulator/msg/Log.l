;; Auto-generated. Do not edit!


(when (boundp 'simulator::Log)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'Log (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::LOG")
  (make-package "SIMULATOR::LOG"))

(in-package "ROS")
;;//! \htmlinclude Log.msg.html


(defclass simulator::Log
  :super ros::object
  :slots (_time _command _measurement _motor_input ))

(defmethod simulator::Log
  (:init
   (&key
    ((:time __time) 0.0)
    ((:command __command) (instance simulator::Command :init))
    ((:measurement __measurement) (instance simulator::Measurement :init))
    ((:motor_input __motor_input) (instance simulator::MotorInput :init))
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _command __command)
   (setq _measurement __measurement)
   (setq _motor_input __motor_input)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:measurement
   (&rest __measurement)
   (if (keywordp (car __measurement))
       (send* _measurement __measurement)
     (progn
       (if __measurement (setq _measurement (car __measurement)))
       _measurement)))
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
    ;; float64 _time
    8
    ;; simulator/Command _command
    (send _command :serialization-length)
    ;; simulator/Measurement _measurement
    (send _measurement :serialization-length)
    ;; simulator/MotorInput _motor_input
    (send _motor_input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; simulator/Command _command
       (send _command :serialize s)
     ;; simulator/Measurement _measurement
       (send _measurement :serialize s)
     ;; simulator/MotorInput _motor_input
       (send _motor_input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; simulator/Command _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;; simulator/Measurement _measurement
     (send _measurement :deserialize buf ptr-) (incf ptr- (send _measurement :serialization-length))
   ;; simulator/MotorInput _motor_input
     (send _motor_input :deserialize buf ptr-) (incf ptr- (send _motor_input :serialization-length))
   ;;
   self)
  )

(setf (get simulator::Log :md5sum-) "a78651615685e7f7458e421d4bbb39e4")
(setf (get simulator::Log :datatype-) "simulator/Log")
(setf (get simulator::Log :definition-)
      "float64 time
simulator/Command command
simulator/Measurement measurement
simulator/MotorInput motor_input
================================================================================
MSG: simulator/Command
float64 accel
float64 dd_roll
================================================================================
MSG: simulator/Measurement
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
================================================================================
MSG: simulator/MotorInput
float64 motor_1
float64 motor_2
float64 motor_3
float64 motor_4
")



(provide :simulator/Log "a78651615685e7f7458e421d4bbb39e4")


