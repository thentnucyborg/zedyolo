;; Auto-generated. Do not edit!


(when (boundp 'ros_dnn_msgs::DetectResult)
  (if (not (find-package "ROS_DNN_MSGS"))
    (make-package "ROS_DNN_MSGS"))
  (shadow 'DetectResult (find-package "ROS_DNN_MSGS")))
(unless (find-package "ROS_DNN_MSGS::DETECTRESULT")
  (make-package "ROS_DNN_MSGS::DETECTRESULT"))

(in-package "ROS")
;;//! \htmlinclude DetectResult.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ros_dnn_msgs::DetectResult
  :super ros::object
  :slots (_id _detection_image _predictions ))

(defmethod ros_dnn_msgs::DetectResult
  (:init
   (&key
    ((:id __id) 0)
    ((:detection_image __detection_image) (instance sensor_msgs::Image :init))
    ((:predictions __predictions) (instance ros_dnn_msgs::Predictions :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _detection_image __detection_image)
   (setq _predictions __predictions)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:detection_image
   (&rest __detection_image)
   (if (keywordp (car __detection_image))
       (send* _detection_image __detection_image)
     (progn
       (if __detection_image (setq _detection_image (car __detection_image)))
       _detection_image)))
  (:predictions
   (&rest __predictions)
   (if (keywordp (car __predictions))
       (send* _predictions __predictions)
     (progn
       (if __predictions (setq _predictions (car __predictions)))
       _predictions)))
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; sensor_msgs/Image _detection_image
    (send _detection_image :serialization-length)
    ;; ros_dnn_msgs/Predictions _predictions
    (send _predictions :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; sensor_msgs/Image _detection_image
       (send _detection_image :serialize s)
     ;; ros_dnn_msgs/Predictions _predictions
       (send _predictions :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; sensor_msgs/Image _detection_image
     (send _detection_image :deserialize buf ptr-) (incf ptr- (send _detection_image :serialization-length))
   ;; ros_dnn_msgs/Predictions _predictions
     (send _predictions :deserialize buf ptr-) (incf ptr- (send _predictions :serialization-length))
   ;;
   self)
  )

(setf (get ros_dnn_msgs::DetectResult :md5sum-) "6f30ee3e8519a3f52a75a14d29ec691c")
(setf (get ros_dnn_msgs::DetectResult :datatype-) "ros_dnn_msgs/DetectResult")
(setf (get ros_dnn_msgs::DetectResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result
int16 id
sensor_msgs/Image detection_image
ros_dnn_msgs/Predictions predictions


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: ros_dnn_msgs/Predictions
Header header
Header image_header
Prediction[] predictions

================================================================================
MSG: ros_dnn_msgs/Prediction
string[] classes
float64[] probabilities
int64 xmin
int64 ymin
int64 xmax
int64 ymax

")



(provide :ros_dnn_msgs/DetectResult "6f30ee3e8519a3f52a75a14d29ec691c")


