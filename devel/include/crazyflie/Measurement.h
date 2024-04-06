// Generated by gencpp from file crazyflie/Measurement.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MESSAGE_MEASUREMENT_H
#define CRAZYFLIE_MESSAGE_MEASUREMENT_H


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
struct Measurement_
{
  typedef Measurement_<ContainerAllocator> Type;

  Measurement_()
    : stamp()
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
    }
  Measurement_(const ContainerAllocator& _alloc)
    : stamp()
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::crazyflie::Measurement_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie::Measurement_<ContainerAllocator> const> ConstPtr;

}; // struct Measurement_

typedef ::crazyflie::Measurement_<std::allocator<void> > Measurement;

typedef boost::shared_ptr< ::crazyflie::Measurement > MeasurementPtr;
typedef boost::shared_ptr< ::crazyflie::Measurement const> MeasurementConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie::Measurement_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie::Measurement_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::crazyflie::Measurement_<ContainerAllocator1> & lhs, const ::crazyflie::Measurement_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::crazyflie::Measurement_<ContainerAllocator1> & lhs, const ::crazyflie::Measurement_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace crazyflie

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::crazyflie::Measurement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie::Measurement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie::Measurement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie::Measurement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie::Measurement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie::Measurement_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie::Measurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "66138e0dd623910bd5c10050dc1bc4b4";
  }

  static const char* value(const ::crazyflie::Measurement_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x66138e0dd623910bULL;
  static const uint64_t static_value2 = 0xd5c10050dc1bc4b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie::Measurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie/Measurement";
  }

  static const char* value(const ::crazyflie::Measurement_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie::Measurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
;
  }

  static const char* value(const ::crazyflie::Measurement_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie::Measurement_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Measurement_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie::Measurement_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie::Measurement_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
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

#endif // CRAZYFLIE_MESSAGE_MEASUREMENT_H