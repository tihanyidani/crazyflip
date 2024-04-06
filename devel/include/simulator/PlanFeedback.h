// Generated by gencpp from file simulator/PlanFeedback.msg
// DO NOT EDIT!


#ifndef SIMULATOR_MESSAGE_PLANFEEDBACK_H
#define SIMULATOR_MESSAGE_PLANFEEDBACK_H


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
struct PlanFeedback_
{
  typedef PlanFeedback_<ContainerAllocator> Type;

  PlanFeedback_()
    : stamp()  {
    }
  PlanFeedback_(const ContainerAllocator& _alloc)
    : stamp()  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;





  typedef boost::shared_ptr< ::simulator::PlanFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulator::PlanFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct PlanFeedback_

typedef ::simulator::PlanFeedback_<std::allocator<void> > PlanFeedback;

typedef boost::shared_ptr< ::simulator::PlanFeedback > PlanFeedbackPtr;
typedef boost::shared_ptr< ::simulator::PlanFeedback const> PlanFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulator::PlanFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulator::PlanFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::simulator::PlanFeedback_<ContainerAllocator1> & lhs, const ::simulator::PlanFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::simulator::PlanFeedback_<ContainerAllocator1> & lhs, const ::simulator::PlanFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace simulator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::simulator::PlanFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator::PlanFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulator::PlanFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulator::PlanFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator::PlanFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator::PlanFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulator::PlanFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84d365d08d5fc49dde870daba1c7992c";
  }

  static const char* value(const ::simulator::PlanFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84d365d08d5fc49dULL;
  static const uint64_t static_value2 = 0xde870daba1c7992cULL;
};

template<class ContainerAllocator>
struct DataType< ::simulator::PlanFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulator/PlanFeedback";
  }

  static const char* value(const ::simulator::PlanFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulator::PlanFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"time stamp\n"
;
  }

  static const char* value(const ::simulator::PlanFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulator::PlanFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulator::PlanFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulator::PlanFeedback_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATOR_MESSAGE_PLANFEEDBACK_H
