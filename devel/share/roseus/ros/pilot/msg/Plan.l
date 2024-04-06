;; Auto-generated. Do not edit!


(when (boundp 'pilot::Plan)
  (if (not (find-package "PILOT"))
    (make-package "PILOT"))
  (shadow 'Plan (find-package "PILOT")))
(unless (find-package "PILOT::PLAN")
  (make-package "PILOT::PLAN"))

(in-package "ROS")
;;//! \htmlinclude Plan.msg.html


(defclass pilot::Plan
  :super ros::object
  :slots (_interval_list _command_list ))

(defmethod pilot::Plan
  (:init
   (&key
    ((:interval_list __interval_list) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:command_list __command_list) ())
    )
   (send-super :init)
   (setq _interval_list __interval_list)
   (setq _command_list __command_list)
   self)
  (:interval_list
   (&optional __interval_list)
   (if __interval_list (setq _interval_list __interval_list)) _interval_list)
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
    ;; float64[] _interval_list
    (* 8    (length _interval_list)) 4
    ;; pilot/Command[] _command_list
    (apply #'+ (send-all _command_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _interval_list
     (write-long (length _interval_list) s)
     (dotimes (i (length _interval_list))
       (sys::poke (elt _interval_list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; pilot/Command[] _command_list
     (write-long (length _command_list) s)
     (dolist (elem _command_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _interval_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _interval_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _interval_list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; pilot/Command[] _command_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _command_list (let (r) (dotimes (i n) (push (instance pilot::Command :init) r)) r))
     (dolist (elem- _command_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pilot::Plan :md5sum-) "84241112053e41dc4c45b618502e3991")
(setf (get pilot::Plan :datatype-) "pilot/Plan")
(setf (get pilot::Plan :definition-)
      "float64[] interval_list
pilot/Command[] command_list
================================================================================
MSG: pilot/Command
float64 height
float64 accel
")



(provide :pilot/Plan "84241112053e41dc4c45b618502e3991")


