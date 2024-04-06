// Generated by gencpp from file simulator/MotorInput.msg
// DO NOT EDIT!


#ifndef SIMULATOR_MESSAGE_MOTORINPUT_H
#define SIMULATOR_MESSAGE_MOTORINPUT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simulator
{
template <class ContainerAllocator>
struct MotorInput_
{
  typedef MotorInput_<ContainerAllocator> Type;

  MotorInput_()
    : motor_1(0.0)
    , motor_2(0.0)
    , motor_3(0.0)
    , motor_4(0.0)  {
    }
  MotorInput_(const ContainerAllocator& _alloc)
    : motor_1(0.0)
    , motor_2(0.0)
    , motor_3(0.0)
    , motor_4(0.0)  {
  (void)_alloc;
    }



   typedef double _motor_1_type;
  _motor_1_type motor_1;

   typedef double _motor_2_type;
  _motor_2_type motor_2;

   typedef double _motor_3_type;
  _motor_3_type motor_3;

   typedef double _motor_4_type;
  _motor_4_type motor_4;





  typedef boost::shared_ptr< ::simulator::MotorInput_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulator::MotorInput_<ContainerAllocator> const> ConstPtr;

}; // struct MotorInput_

typedef ::simulator::MotorInput_<std::allocator<void> > MotorInput;

typedef boost::shared_ptr< ::simulator::MotorInput > MotorInputPtr;
typedef boost::shared_ptr< ::simulator::MotorInput const> MotorInputConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulator::MotorInput_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulator::MotorInput_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::simulator::MotorInput_<ContainerAllocator1> & lhs, const ::simulator::MotorInput_<ContainerAllocator2> & rhs)
{
  return lhs.motor_1 == rhs.motor_1 &&
    lhs.motor_2 == rhs.motor_2 &&
    lhs.motor_3 == rhs.motor_3 &&
    lhs.motor_4 == rhs.motor_4;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::simulator::MotorInput_<ContainerAllocator1> & lhs, const ::simulator::MotorInput_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace simulator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::simulator::MotorInput_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator::MotorInput_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulator::MotorInput_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulator::MotorInput_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator::MotorInput_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator::MotorInput_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulator::MotorInput_<ContainerAllocator> >
{
  static const char* value()
  {
    return "62f1d93821548e9c595f83183ea5f6c9";
  }

  static const char* value(const ::simulator::MotorInput_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x62f1d93821548e9cULL;
  static const uint64_t static_value2 = 0x595f83183ea5f6c9ULL;
};

template<class ContainerAllocator>
struct DataType< ::simulator::MotorInput_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulator/MotorInput";
  }

  static const char* value(const ::simulator::MotorInput_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulator::MotorInput_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 motor_1\n"
"float64 motor_2\n"
"float64 motor_3\n"
"float64 motor_4\n"
;
  }

  static const char* value(const ::simulator::MotorInput_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulator::MotorInput_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.motor_1);
      stream.next(m.motor_2);
      stream.next(m.motor_3);
      stream.next(m.motor_4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorInput_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulator::MotorInput_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulator::MotorInput_<ContainerAllocator>& v)
  {
    s << indent << "motor_1: ";
    Printer<double>::stream(s, indent + "  ", v.motor_1);
    s << indent << "motor_2: ";
    Printer<double>::stream(s, indent + "  ", v.motor_2);
    s << indent << "motor_3: ";
    Printer<double>::stream(s, indent + "  ", v.motor_3);
    s << indent << "motor_4: ";
    Printer<double>::stream(s, indent + "  ", v.motor_4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATOR_MESSAGE_MOTORINPUT_H