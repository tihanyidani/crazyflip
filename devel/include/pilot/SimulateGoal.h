// Generated by gencpp from file pilot/SimulateGoal.msg
// DO NOT EDIT!


#ifndef PILOT_MESSAGE_SIMULATEGOAL_H
#define PILOT_MESSAGE_SIMULATEGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pilot/SimulationParameters.h>

namespace pilot
{
template <class ContainerAllocator>
struct SimulateGoal_
{
  typedef SimulateGoal_<ContainerAllocator> Type;

  SimulateGoal_()
    : simulation_parameters()  {
    }
  SimulateGoal_(const ContainerAllocator& _alloc)
    : simulation_parameters(_alloc)  {
  (void)_alloc;
    }



   typedef  ::pilot::SimulationParameters_<ContainerAllocator>  _simulation_parameters_type;
  _simulation_parameters_type simulation_parameters;





  typedef boost::shared_ptr< ::pilot::SimulateGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pilot::SimulateGoal_<ContainerAllocator> const> ConstPtr;

}; // struct SimulateGoal_

typedef ::pilot::SimulateGoal_<std::allocator<void> > SimulateGoal;

typedef boost::shared_ptr< ::pilot::SimulateGoal > SimulateGoalPtr;
typedef boost::shared_ptr< ::pilot::SimulateGoal const> SimulateGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pilot::SimulateGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pilot::SimulateGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pilot::SimulateGoal_<ContainerAllocator1> & lhs, const ::pilot::SimulateGoal_<ContainerAllocator2> & rhs)
{
  return lhs.simulation_parameters == rhs.simulation_parameters;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pilot::SimulateGoal_<ContainerAllocator1> & lhs, const ::pilot::SimulateGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pilot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pilot::SimulateGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pilot::SimulateGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pilot::SimulateGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pilot::SimulateGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pilot::SimulateGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pilot::SimulateGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pilot::SimulateGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "21babf6309a27d9c02ef58309c28fe13";
  }

  static const char* value(const ::pilot::SimulateGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x21babf6309a27d9cULL;
  static const uint64_t static_value2 = 0x02ef58309c28fe13ULL;
};

template<class ContainerAllocator>
struct DataType< ::pilot::SimulateGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pilot/SimulateGoal";
  }

  static const char* value(const ::pilot::SimulateGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pilot::SimulateGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
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

  static const char* value(const ::pilot::SimulateGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pilot::SimulateGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.simulation_parameters);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SimulateGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pilot::SimulateGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pilot::SimulateGoal_<ContainerAllocator>& v)
  {
    s << indent << "simulation_parameters: ";
    s << std::endl;
    Printer< ::pilot::SimulationParameters_<ContainerAllocator> >::stream(s, indent + "  ", v.simulation_parameters);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PILOT_MESSAGE_SIMULATEGOAL_H