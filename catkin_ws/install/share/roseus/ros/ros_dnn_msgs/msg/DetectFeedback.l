;; Auto-generated. Do not edit!


(when (boundp 'ros_dnn_msgs::DetectFeedback)
  (if (not (find-package "ROS_DNN_MSGS"))
    (make-package "ROS_DNN_MSGS"))
  (shadow 'DetectFeedback (find-package "ROS_DNN_MSGS")))
(unless (find-package "ROS_DNN_MSGS::DETECTFEEDBACK")
  (make-package "ROS_DNN_MSGS::DETECTFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude DetectFeedback.msg.html


(defclass ros_dnn_msgs::DetectFeedback
  :super ros::object
  :slots ())

(defmethod ros_dnn_msgs::DetectFeedback
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get ros_dnn_msgs::DetectFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get ros_dnn_msgs::DetectFeedback :datatype-) "ros_dnn_msgs/DetectFeedback")
(setf (get ros_dnn_msgs::DetectFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback


")



(provide :ros_dnn_msgs/DetectFeedback "d41d8cd98f00b204e9800998ecf8427e")

