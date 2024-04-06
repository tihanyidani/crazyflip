;; Auto-generated. Do not edit!


(when (boundp 'pilot::Command)
  (if (not (find-package "PILOT"))
    (make-package "PILOT"))
  (shadow 'Command (find-package "PILOT")))
(unless (find-package "PILOT::COMMAND")
  (make-package "PILOT::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass pilot::Command
  :super ros::object
  :slots (_height _accel ))

(defmethod pilot::Command
  (:init
   (&key
    ((:height __height) 0.0)
    ((:accel __accel) 0.0)
    )
   (send-super :init)
   (setq _height (float __height))
   (setq _accel (float __accel))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:serialization-length
   ()
   (+
    ;; float64 _height
    8
    ;; float64 _accel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accel
       (sys::poke _accel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accel
     (setq _accel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pilot::Command :md5sum-) "63158adff50f896215247bc385d77c11")
(setf (get pilot::Command :datatype-) "pilot/Command")
(setf (get pilot::Command :definition-)
      "float64 height
float64 accel
")



(provide :pilot/Command "63158adff50f896215247bc385d77c11")


