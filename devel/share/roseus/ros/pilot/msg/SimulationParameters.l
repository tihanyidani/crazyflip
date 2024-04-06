;; Auto-generated. Do not edit!


(when (boundp 'pilot::SimulationParameters)
  (if (not (find-package "PILOT"))
    (make-package "PILOT"))
  (shadow 'SimulationParameters (find-package "PILOT")))
(unless (find-package "PILOT::SIMULATIONPARAMETERS")
  (make-package "PILOT::SIMULATIONPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude SimulationParameters.msg.html


(defclass pilot::SimulationParameters
  :super ros::object
  :slots (_pilot_name _crazyflie_name _iteration_number _init_time _plan _fly_box _fly_time ))

(defmethod pilot::SimulationParameters
  (:init
   (&key
    ((:pilot_name __pilot_name) "")
    ((:crazyflie_name __crazyflie_name) "")
    ((:iteration_number __iteration_number) 0)
    ((:init_time __init_time) (instance ros::time :init))
    ((:plan __plan) (instance pilot::Plan :init))
    ((:fly_box __fly_box) (instance pilot::Box :init))
    ((:fly_time __fly_time) 0.0)
    )
   (send-super :init)
   (setq _pilot_name (string __pilot_name))
   (setq _crazyflie_name (string __crazyflie_name))
   (setq _iteration_number (round __iteration_number))
   (setq _init_time __init_time)
   (setq _plan __plan)
   (setq _fly_box __fly_box)
   (setq _fly_time (float __fly_time))
   self)
  (:pilot_name
   (&optional __pilot_name)
   (if __pilot_name (setq _pilot_name __pilot_name)) _pilot_name)
  (:crazyflie_name
   (&optional __crazyflie_name)
   (if __crazyflie_name (setq _crazyflie_name __crazyflie_name)) _crazyflie_name)
  (:iteration_number
   (&optional __iteration_number)
   (if __iteration_number (setq _iteration_number __iteration_number)) _iteration_number)
  (:init_time
   (&optional __init_time)
   (if __init_time (setq _init_time __init_time)) _init_time)
  (:plan
   (&rest __plan)
   (if (keywordp (car __plan))
       (send* _plan __plan)
     (progn
       (if __plan (setq _plan (car __plan)))
       _plan)))
  (:fly_box
   (&rest __fly_box)
   (if (keywordp (car __fly_box))
       (send* _fly_box __fly_box)
     (progn
       (if __fly_box (setq _fly_box (car __fly_box)))
       _fly_box)))
  (:fly_time
   (&optional __fly_time)
   (if __fly_time (setq _fly_time __fly_time)) _fly_time)
  (:serialization-length
   ()
   (+
    ;; string _pilot_name
    4 (length _pilot_name)
    ;; string _crazyflie_name
    4 (length _crazyflie_name)
    ;; int32 _iteration_number
    4
    ;; time _init_time
    8
    ;; pilot/Plan _plan
    (send _plan :serialization-length)
    ;; pilot/Box _fly_box
    (send _fly_box :serialization-length)
    ;; float64 _fly_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pilot_name
       (write-long (length _pilot_name) s) (princ _pilot_name s)
     ;; string _crazyflie_name
       (write-long (length _crazyflie_name) s) (princ _crazyflie_name s)
     ;; int32 _iteration_number
       (write-long _iteration_number s)
     ;; time _init_time
       (write-long (send _init_time :sec) s) (write-long (send _init_time :nsec) s)
     ;; pilot/Plan _plan
       (send _plan :serialize s)
     ;; pilot/Box _fly_box
       (send _fly_box :serialize s)
     ;; float64 _fly_time
       (sys::poke _fly_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pilot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pilot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _crazyflie_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _crazyflie_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _iteration_number
     (setq _iteration_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _init_time
     (send _init_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _init_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pilot/Plan _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
   ;; pilot/Box _fly_box
     (send _fly_box :deserialize buf ptr-) (incf ptr- (send _fly_box :serialization-length))
   ;; float64 _fly_time
     (setq _fly_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pilot::SimulationParameters :md5sum-) "2241c2e7cdde3bba988379111766cc27")
(setf (get pilot::SimulationParameters :datatype-) "pilot/SimulationParameters")
(setf (get pilot::SimulationParameters :definition-)
      "string pilot_name
string crazyflie_name
int32 iteration_number
time init_time
pilot/Plan plan
pilot/Box fly_box
float64 fly_time
================================================================================
MSG: pilot/Plan
float64[] interval_list
pilot/Command[] command_list
================================================================================
MSG: pilot/Command
float64 height
float64 accel
================================================================================
MSG: pilot/Box
float64 x_min
float64 x_max
float64 y_min
float64 y_max
float64 z_min
float64 z_max
")



(provide :pilot/SimulationParameters "2241c2e7cdde3bba988379111766cc27")


