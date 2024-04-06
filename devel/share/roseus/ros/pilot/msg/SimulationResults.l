;; Auto-generated. Do not edit!


(when (boundp 'pilot::SimulationResults)
  (if (not (find-package "PILOT"))
    (make-package "PILOT"))
  (shadow 'SimulationResults (find-package "PILOT")))
(unless (find-package "PILOT::SIMULATIONRESULTS")
  (make-package "PILOT::SIMULATIONRESULTS"))

(in-package "ROS")
;;//! \htmlinclude SimulationResults.msg.html


(defclass pilot::SimulationResults
  :super ros::object
  :slots (_has_survived _survival_time _fitness ))

(defmethod pilot::SimulationResults
  (:init
   (&key
    ((:has_survived __has_survived) nil)
    ((:survival_time __survival_time) 0.0)
    ((:fitness __fitness) 0.0)
    )
   (send-super :init)
   (setq _has_survived __has_survived)
   (setq _survival_time (float __survival_time))
   (setq _fitness (float __fitness))
   self)
  (:has_survived
   (&optional (__has_survived :null))
   (if (not (eq __has_survived :null)) (setq _has_survived __has_survived)) _has_survived)
  (:survival_time
   (&optional __survival_time)
   (if __survival_time (setq _survival_time __survival_time)) _survival_time)
  (:fitness
   (&optional __fitness)
   (if __fitness (setq _fitness __fitness)) _fitness)
  (:serialization-length
   ()
   (+
    ;; bool _has_survived
    1
    ;; float64 _survival_time
    8
    ;; float64 _fitness
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _has_survived
       (if _has_survived (write-byte -1 s) (write-byte 0 s))
     ;; float64 _survival_time
       (sys::poke _survival_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fitness
       (sys::poke _fitness (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _has_survived
     (setq _has_survived (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _survival_time
     (setq _survival_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fitness
     (setq _fitness (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pilot::SimulationResults :md5sum-) "045f112ef1324231dcc96a1497c5d849")
(setf (get pilot::SimulationResults :datatype-) "pilot/SimulationResults")
(setf (get pilot::SimulationResults :definition-)
      "bool has_survived
float64 survival_time
float64 fitness
")



(provide :pilot/SimulationResults "045f112ef1324231dcc96a1497c5d849")


