// Generated by gencpp from file crazyflie/Command.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MESSAGE_COMMAND_H
#define CRAZYFLIE_MESSAGE_COMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace crazyflie
{
template <class ContainerAllocator>
struct Command_
{
  typedef Command_<ContainerAllocator> Type;

  Command_()
    : accel(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
    }
  Command_(const ContainerAllocator& _alloc)
    : accel(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef double _accel_type;
  _accel_type accel;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::crazyflie::Command_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie::Command_<ContainerAllocator> const> ConstPtr;

}; // struct Command_

typedef ::crazyflie::Command_<std::allocator<void> > Command;

typedef boost::shared_ptr< ::crazyflie::Command > CommandPtr;
typedef boost::shared_ptr< ::crazyflie::Command const> CommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie::Command_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie::Command_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::crazyflie::Command_<ContainerAllocator1> & lhs, const ::crazyflie::Command_<ContainerAllocator2> & rhs)
{
  return lhs.accel == rhs.accel &&
    lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::crazyflie::Command_<ContainerAllocator1> & lhs, const ::crazyflie::Command_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace crazyflie

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::crazyflie::Command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie::Command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie::Command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie::Command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie::Command_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie::Command_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "568652ed73b354c3341d7ec945c16779";
  }

  static const char* value(const ::crazyflie::Command_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x568652ed73b354c3ULL;
  static const uint64_t static_value2 = 0x341d7ec945c16779ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie/Command";
  }

  static const char* value(const ::crazyflie::Command_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 accel\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
;
  }

  static const char* value(const ::crazyflie::Command_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie::Command_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.accel);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Command_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie::Command_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie::Command_<ContainerAllocator>& v)
  {
    s << indent << "accel: ";
    Printer<double>::stream(s, indent + "  ", v.accel);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MESSAGE_COMMAND_H
