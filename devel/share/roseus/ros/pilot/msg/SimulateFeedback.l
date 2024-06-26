;; Auto-generated. Do not edit!


(when (boundp 'pilot::SimulateFeedback)
  (if (not (find-package "PILOT"))
    (make-package "PILOT"))
  (shadow 'SimulateFeedback (find-package "PILOT")))
(unless (find-package "PILOT::SIMULATEFEEDBACK")
  (make-package "PILOT::SIMULATEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude SimulateFeedback.msg.html


(defclass pilot::SimulateFeedback
  :super ros::object
  :slots (_progress_percentage ))

(defmethod pilot::SimulateFeedback
  (:init
   (&key
    ((:progress_percentage __progress_percentage) 0)
    )
   (send-super :init)
   (setq _progress_percentage (round __progress_percentage))
   self)
  (:progress_percentage
   (&optional __progress_percentage)
   (if __progress_percentage (setq _progress_percentage __progress_percentage)) _progress_percentage)
  (:serialization-length
   ()
   (+
    ;; uint8 _progress_percentage
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _progress_percentage
       (write-byte _progress_percentage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _progress_percentage
     (setq _progress_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pilot::SimulateFeedback :md5sum-) "107e41710fed83193baa98558e7f27ff")
(setf (get pilot::SimulateFeedback :datatype-) "pilot/SimulateFeedback")
(setf (get pilot::SimulateFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
uint8 progress_percentage

")



(provide :pilot/SimulateFeedback "107e41710fed83193baa98558e7f27ff")


