// Generated by gencpp from file webots_ros/node_get_field_by_indexRequest.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_NODE_GET_FIELD_BY_INDEXREQUEST_H
#define WEBOTS_ROS_MESSAGE_NODE_GET_FIELD_BY_INDEXREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace webots_ros
{
template <class ContainerAllocator>
struct node_get_field_by_indexRequest_
{
  typedef node_get_field_by_indexRequest_<ContainerAllocator> Type;

  node_get_field_by_indexRequest_()
    : node(0)
    , index(0)
    , proto(false)  {
    }
  node_get_field_by_indexRequest_(const ContainerAllocator& _alloc)
    : node(0)
    , index(0)
    , proto(false)  {
  (void)_alloc;
    }



   typedef uint64_t _node_type;
  _node_type node;

   typedef uint32_t _index_type;
  _index_type index;

   typedef uint8_t _proto_type;
  _proto_type proto;





  typedef boost::shared_ptr< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> const> ConstPtr;

}; // struct node_get_field_by_indexRequest_

typedef ::webots_ros::node_get_field_by_indexRequest_<std::allocator<void> > node_get_field_by_indexRequest;

typedef boost::shared_ptr< ::webots_ros::node_get_field_by_indexRequest > node_get_field_by_indexRequestPtr;
typedef boost::shared_ptr< ::webots_ros::node_get_field_by_indexRequest const> node_get_field_by_indexRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator1> & lhs, const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator2> & rhs)
{
  return lhs.node == rhs.node &&
    lhs.index == rhs.index &&
    lhs.proto == rhs.proto;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator1> & lhs, const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b49b500661f860e9fb67bf931d052d8";
  }

  static const char* value(const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b49b500661f860eULL;
  static const uint64_t static_value2 = 0x9fb67bf931d052d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_ros/node_get_field_by_indexRequest";
  }

  static const char* value(const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 node\n"
"uint32 index\n"
"bool proto\n"
;
  }

  static const char* value(const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.node);
      stream.next(m.index);
      stream.next(m.proto);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct node_get_field_by_indexRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_ros::node_get_field_by_indexRequest_<ContainerAllocator>& v)
  {
    s << indent << "node: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.node);
    s << indent << "index: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.index);
    s << indent << "proto: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.proto);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_NODE_GET_FIELD_BY_INDEXREQUEST_H
