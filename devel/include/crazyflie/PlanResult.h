// Generated by gencpp from file crazyflie/PlanResult.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MESSAGE_PLANRESULT_H
#define CRAZYFLIE_MESSAGE_PLANRESULT_H


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
struct PlanResult_
{
  typedef PlanResult_<ContainerAllocator> Type;

  PlanResult_()
    : success(false)  {
    }
  PlanResult_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::crazyflie::PlanResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie::PlanResult_<ContainerAllocator> const> ConstPtr;

}; // struct PlanResult_

typedef ::crazyflie::PlanResult_<std::allocator<void> > PlanResult;

typedef boost::shared_ptr< ::crazyflie::PlanResult > PlanResultPtr;
typedef boost::shared_ptr< ::crazyflie::PlanResult const> PlanResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie::PlanResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie::PlanResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::crazyflie::PlanResult_<ContainerAllocator1> & lhs, const ::crazyflie::PlanResult_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::crazyflie::PlanResult_<ContainerAllocator1> & lhs, const ::crazyflie::PlanResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace crazyflie

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::crazyflie::PlanResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie::PlanResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie::PlanResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie::PlanResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie::PlanResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie::PlanResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie::PlanResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::crazyflie::PlanResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie::PlanResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie/PlanResult";
  }

  static const char* value(const ::crazyflie::PlanResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie::PlanResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"bool success\n"
;
  }

  static const char* value(const ::crazyflie::PlanResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie::PlanResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie::PlanResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie::PlanResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MESSAGE_PLANRESULT_H