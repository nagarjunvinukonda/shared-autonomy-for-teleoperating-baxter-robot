;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_msgs::Encoder)
  (if (not (find-package "DYNAMIXEL_MSGS"))
    (make-package "DYNAMIXEL_MSGS"))
  (shadow 'Encoder (find-package "DYNAMIXEL_MSGS")))
(unless (find-package "DYNAMIXEL_MSGS::ENCODER")
  (make-package "DYNAMIXEL_MSGS::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude Encoder.msg.html


(defclass dynamixel_msgs::Encoder
  :super ros::object
  :slots (_timestamp _encoders ))

(defmethod dynamixel_msgs::Encoder
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:encoders __encoders) (make-array 3 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _encoders __encoders)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:encoders
   (&optional __encoders)
   (if __encoders (setq _encoders __encoders)) _encoders)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; uint16[3] _encoders
    (* 2    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16[3] _encoders
     (dotimes (i 3)
       (write-word (elt _encoders i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16[3] _encoders
   (dotimes (i (length _encoders))
     (setf (elt _encoders i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get dynamixel_msgs::Encoder :md5sum-) "9c3d81a65c121e8aec105f07700f8bd8")
(setf (get dynamixel_msgs::Encoder :datatype-) "dynamixel_msgs/Encoder")
(setf (get dynamixel_msgs::Encoder :definition-)
      "float64 timestamp   # encoder state is at this time
uint16[3] encoders   # value of the encoder state
")



(provide :dynamixel_msgs/Encoder "9c3d81a65c121e8aec105f07700f8bd8")


