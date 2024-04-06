// Generated by gencpp from file webots_ros/node_get_contact_pointsResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_NODE_GET_CONTACT_POINTSRESPONSE_H
#define WEBOTS_ROS_MESSAGE_NODE_GET_CONTACT_POINTSRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <webots_ros/ContactPoint.h>

namespace webots_ros
{
template <class ContainerAllocator>
struct node_get_contact_pointsResponse_
{
  typedef node_get_contact_pointsResponse_<ContainerAllocator> Type;

  node_get_contact_pointsResponse_()
    : contact_points()  {
    }
  node_get_contact_pointsResponse_(const ContainerAllocator& _alloc)
    : contact_points(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::webots_ros::ContactPoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::webots_ros::ContactPoint_<ContainerAllocator> >> _contact_points_type;
  _contact_points_type contact_points;





  typedef boost::shared_ptr< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct node_get_contact_pointsResponse_

typedef ::webots_ros::node_get_contact_pointsResponse_<std::allocator<void> > node_get_contact_pointsResponse;

typedef boost::shared_ptr< ::webots_ros::node_get_contact_pointsResponse > node_get_contact_pointsResponsePtr;
typedef boost::shared_ptr< ::webots_ros::node_get_contact_pointsResponse const> node_get_contact_pointsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator1> & lhs, const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.contact_points == rhs.contact_points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator1> & lhs, const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "484624ae2556355b876c7bc286b22f3b";
  }

  static const char* value(const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x484624ae2556355bULL;
  static const uint64_t static_value2 = 0x876c7bc286b22f3bULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_ros/node_get_contact_pointsResponse";
  }

  static const char* value(const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_ros/ContactPoint[] contact_points\n"
"\n"
"\n"
"================================================================================\n"
"MSG: webots_ros/ContactPoint\n"
"geometry_msgs/Point point\n"
"int32 node_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.contact_points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct node_get_contact_pointsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_ros::node_get_contact_pointsResponse_<ContainerAllocator>& v)
  {
    s << indent << "contact_points[]" << std::endl;
    for (size_t i = 0; i < v.contact_points.size(); ++i)
    {
      s << indent << "  contact_points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::webots_ros::ContactPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.contact_points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_NODE_GET_CONTACT_POINTSRESPONSE_H
