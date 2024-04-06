;; Auto-generated. Do not edit!


(when (boundp 'pilot::MotorInput)
  (if (not (find-package "PILOT"))
    (make-package "PILOT"))
  (shadow 'MotorInput (find-package "PILOT")))
(unless (find-package "PILOT::MOTORINPUT")
  (make-package "PILOT::MOTORINPUT"))

(in-package "ROS")
;;//! \htmlinclude MotorInput.msg.html


(defclass pilot::MotorInput
  :super ros::object
  :slots (_m1_motor _m2_motor _m3_motor _m4_motor ))

(defmethod pilot::MotorInput
  (:init
   (&key
    ((:m1_motor __m1_motor) 0.0)
    ((:m2_motor __m2_motor) 0.0)
    ((:m3_motor __m3_motor) 0.0)
    ((:m4_motor __m4_motor) 0.0)
    )
   (send-super :init)
   (setq _m1_motor (float __m1_motor))
   (setq _m2_motor (float __m2_motor))
   (setq _m3_motor (float __m3_motor))
   (setq _m4_motor (float __m4_motor))
   self)
  (:m1_motor
   (&optional __m1_motor)
   (if __m1_motor (setq _m1_motor __m1_motor)) _m1_motor)
  (:m2_motor
   (&optional __m2_motor)
   (if __m2_motor (setq _m2_motor __m2_motor)) _m2_motor)
  (:m3_motor
   (&optional __m3_motor)
   (if __m3_motor (setq _m3_motor __m3_motor)) _m3_motor)
  (:m4_motor
   (&optional __m4_motor)
   (if __m4_motor (setq _m4_motor __m4_motor)) _m4_motor)
  (:serialization-length
   ()
   (+
    ;; float64 _m1_motor
    8
    ;; float64 _m2_motor
    8
    ;; float64 _m3_motor
    8
    ;; float64 _m4_motor
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _m1_motor
       (sys::poke _m1_motor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m2_motor
       (sys::poke _m2_motor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m3_motor
       (sys::poke _m3_motor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m4_motor
       (sys::poke _m4_motor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _m1_motor
     (setq _m1_motor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m2_motor
     (setq _m2_motor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m3_motor
     (setq _m3_motor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m4_motor
     (setq _m4_motor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pilot::MotorInput :md5sum-) "f292020030bdf5ef91b0fca2e65a2223")
(setf (get pilot::MotorInput :datatype-) "pilot/MotorInput")
(setf (get pilot::MotorInput :definition-)
      "float64 m1_motor
float64 m2_motor
float64 m3_motor
float64 m4_motor
")



(provide :pilot/MotorInput "f292020030bdf5ef91b0fca2e65a2223")


