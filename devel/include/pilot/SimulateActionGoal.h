// Generated by gencpp from file pilot/SimulateActionGoal.msg
// DO NOT EDIT!


#ifndef PILOT_MESSAGE_SIMULATEACTIONGOAL_H
#define PILOT_MESSAGE_SIMULATEACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <pilot/SimulateGoal.h>

namespace pilot
{
template <class ContainerAllocator>
struct SimulateActionGoal_
{
  typedef SimulateActionGoal_<ContainerAllocator> Type;

  SimulateActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  SimulateActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::pilot::SimulateGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::pilot::SimulateActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pilot::SimulateActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct SimulateActionGoal_

typedef ::pilot::SimulateActionGoal_<std::allocator<void> > SimulateActionGoal;

typedef boost::shared_ptr< ::pilot::SimulateActionGoal > SimulateActionGoalPtr;
typedef boost::shared_ptr< ::pilot::SimulateActionGoal const> SimulateActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pilot::SimulateActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pilot::SimulateActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pilot::SimulateActionGoal_<ContainerAllocator1> & lhs, const ::pilot::SimulateActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pilot::SimulateActionGoal_<ContainerAllocator1> & lhs, const ::pilot::SimulateActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pilot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pilot::SimulateActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pilot::SimulateActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pilot::SimulateActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pilot::SimulateActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pilot::SimulateActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pilot::SimulateActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pilot::SimulateActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd5ff790fb2f85bb400ee52043a2523d";
  }

  static const char* value(const ::pilot::SimulateActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd5ff790fb2f85bbULL;
  static const uint64_t static_value2 = 0x400ee52043a2523dULL;
};

template<class ContainerAllocator>
struct DataType< ::pilot::SimulateActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pilot/SimulateActionGoal";
  }

  static const char* value(const ::pilot::SimulateActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pilot::SimulateActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"SimulateGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pilot/SimulateGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"pilot/SimulationParameters simulation_parameters\n"
"\n"
"================================================================================\n"
"MSG: pilot/SimulationParameters\n"
"string pilot_name\n"
"string crazyflie_name\n"
"int32 iteration_number\n"
"time init_time\n"
"pilot/Plan plan\n"
"pilot/Box fly_box\n"
"float64 fly_time\n"
"================================================================================\n"
"MSG: pilot/Plan\n"
"float64[] interval_list\n"
"pilot/Command[] command_list\n"
"================================================================================\n"
"MSG: pilot/Command\n"
"float64 height\n"
"float64 accel\n"
"================================================================================\n"
"MSG: pilot/Box\n"
"float64 x_min\n"
"float64 x_max\n"
"float64 y_min\n"
"float64 y_max\n"
"float64 z_min\n"
"float64 z_max\n"
;
  }

  static const char* value(const ::pilot::SimulateActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pilot::SimulateActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SimulateActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pilot::SimulateActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pilot::SimulateActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::pilot::SimulateGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PILOT_MESSAGE_SIMULATEACTIONGOAL_H
