;; Auto-generated. Do not edit!


(when (boundp 'crazyflie::Input)
  (if (not (find-package "CRAZYFLIE"))
    (make-package "CRAZYFLIE"))
  (shadow 'Input (find-package "CRAZYFLIE")))
(unless (find-package "CRAZYFLIE::INPUT")
  (make-package "CRAZYFLIE::INPUT"))

(in-package "ROS")
;;//! \htmlinclude Input.msg.html


(defclass crazyflie::Input
  :super ros::object
  :slots (_accel _roll _pitch _yaw ))

(defmethod crazyflie::Input
  (:init
   (&key
    ((:accel __accel) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _accel (float __accel))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _accel
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _accel
       (sys::poke _accel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _accel
     (setq _accel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get crazyflie::Input :md5sum-) "568652ed73b354c3341d7ec945c16779")
(setf (get crazyflie::Input :datatype-) "crazyflie/Input")
(setf (get crazyflie::Input :definition-)
      "float64 accel
float64 roll
float64 pitch
float64 yaw
")



(provide :crazyflie/Input "568652ed73b354c3341d7ec945c16779")


