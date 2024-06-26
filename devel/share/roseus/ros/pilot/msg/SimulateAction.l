;; Auto-generated. Do not edit!


(when (boundp 'pilot::SimulateAction)
  (if (not (find-package "PILOT"))
    (make-package "PILOT"))
  (shadow 'SimulateAction (find-package "PILOT")))
(unless (find-package "PILOT::SIMULATEACTION")
  (make-package "PILOT::SIMULATEACTION"))

(in-package "ROS")
;;//! \htmlinclude SimulateAction.msg.html


(defclass pilot::SimulateAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod pilot::SimulateAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance pilot::SimulateActionGoal :init))
    ((:action_result __action_result) (instance pilot::SimulateActionResult :init))
    ((:action_feedback __action_feedback) (instance pilot::SimulateActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; pilot/SimulateActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; pilot/SimulateActionResult _action_result
    (send _action_result :serialization-length)
    ;; pilot/SimulateActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pilot/SimulateActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; pilot/SimulateActionResult _action_result
       (send _action_result :serialize s)
     ;; pilot/SimulateActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pilot/SimulateActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; pilot/SimulateActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; pilot/SimulateActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get pilot::SimulateAction :md5sum-) "88da0a673882957878c25277a58a3fd9")
(setf (get pilot::SimulateAction :datatype-) "pilot/SimulateAction")
(setf (get pilot::SimulateAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

SimulateActionGoal action_goal
SimulateActionResult action_result
SimulateActionFeedback action_feedback

================================================================================
MSG: pilot/SimulateActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
SimulateGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: pilot/SimulateGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
pilot/SimulationParameters simulation_parameters

================================================================================
MSG: pilot/SimulationParameters
string pilot_name
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
================================================================================
MSG: pilot/SimulateActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
SimulateResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: pilot/SimulateResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
pilot/SimulationResults simulation_results

================================================================================
MSG: pilot/SimulationResults
bool has_survived
float64 survival_time
float64 fitness
================================================================================
MSG: pilot/SimulateActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
SimulateFeedback feedback

================================================================================
MSG: pilot/SimulateFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
uint8 progress_percentage

")



(provide :pilot/SimulateAction "88da0a673882957878c25277a58a3fd9")


