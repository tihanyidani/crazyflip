;; Auto-generated. Do not edit!


(when (boundp 'simulator::Command)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'Command (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::COMMAND")
  (make-package "SIMULATOR::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass simulator::Command
  :super ros::object
  :slots (_accel _dd_roll ))

(defmethod simulator::Command
  (:init
   (&key
    ((:accel __accel) 0.0)
    ((:dd_roll __dd_roll) 0.0)
    )
   (send-super :init)
   (setq _accel (float __accel))
   (setq _dd_roll (float __dd_roll))
   self)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:dd_roll
   (&optional __dd_roll)
   (if __dd_roll (setq _dd_roll __dd_roll)) _dd_roll)
  (:serialization-length
   ()
   (+
    ;; float64 _accel
    8
    ;; float64 _dd_roll
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _accel
       (sys::poke _accel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dd_roll
       (sys::poke _dd_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _accel
     (setq _accel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dd_roll
     (setq _dd_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simulator::Command :md5sum-) "f48091e0b3a7fa4bae99174051aca91d")
(setf (get simulator::Command :datatype-) "simulator/Command")
(setf (get simulator::Command :definition-)
      "float64 accel
float64 dd_roll
")



(provide :simulator/Command "f48091e0b3a7fa4bae99174051aca91d")


