;; Auto-generated. Do not edit!


(when (boundp 'simulator::MotorInput)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'MotorInput (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::MOTORINPUT")
  (make-package "SIMULATOR::MOTORINPUT"))

(in-package "ROS")
;;//! \htmlinclude MotorInput.msg.html


(defclass simulator::MotorInput
  :super ros::object
  :slots (_motor_1 _motor_2 _motor_3 _motor_4 ))

(defmethod simulator::MotorInput
  (:init
   (&key
    ((:motor_1 __motor_1) 0.0)
    ((:motor_2 __motor_2) 0.0)
    ((:motor_3 __motor_3) 0.0)
    ((:motor_4 __motor_4) 0.0)
    )
   (send-super :init)
   (setq _motor_1 (float __motor_1))
   (setq _motor_2 (float __motor_2))
   (setq _motor_3 (float __motor_3))
   (setq _motor_4 (float __motor_4))
   self)
  (:motor_1
   (&optional __motor_1)
   (if __motor_1 (setq _motor_1 __motor_1)) _motor_1)
  (:motor_2
   (&optional __motor_2)
   (if __motor_2 (setq _motor_2 __motor_2)) _motor_2)
  (:motor_3
   (&optional __motor_3)
   (if __motor_3 (setq _motor_3 __motor_3)) _motor_3)
  (:motor_4
   (&optional __motor_4)
   (if __motor_4 (setq _motor_4 __motor_4)) _motor_4)
  (:serialization-length
   ()
   (+
    ;; float64 _motor_1
    8
    ;; float64 _motor_2
    8
    ;; float64 _motor_3
    8
    ;; float64 _motor_4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _motor_1
       (sys::poke _motor_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_2
       (sys::poke _motor_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_3
       (sys::poke _motor_3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motor_4
       (sys::poke _motor_4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _motor_1
     (setq _motor_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_2
     (setq _motor_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_3
     (setq _motor_3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motor_4
     (setq _motor_4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simulator::MotorInput :md5sum-) "62f1d93821548e9c595f83183ea5f6c9")
(setf (get simulator::MotorInput :datatype-) "simulator/MotorInput")
(setf (get simulator::MotorInput :definition-)
      "float64 motor_1
float64 motor_2
float64 motor_3
float64 motor_4
")



(provide :simulator/MotorInput "62f1d93821548e9c595f83183ea5f6c9")


