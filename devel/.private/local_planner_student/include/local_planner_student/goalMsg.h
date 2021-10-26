// Generated by gencpp from file local_planner_student/goalMsg.msg
// DO NOT EDIT!


#ifndef LOCAL_PLANNER_STUDENT_MESSAGE_GOALMSG_H
#define LOCAL_PLANNER_STUDENT_MESSAGE_GOALMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>

namespace local_planner_student
{
template <class ContainerAllocator>
struct goalMsg_
{
  typedef goalMsg_<ContainerAllocator> Type;

  goalMsg_()
    : goalPose2D()  {
    }
  goalMsg_(const ContainerAllocator& _alloc)
    : goalPose2D(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _goalPose2D_type;
  _goalPose2D_type goalPose2D;





  typedef boost::shared_ptr< ::local_planner_student::goalMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::local_planner_student::goalMsg_<ContainerAllocator> const> ConstPtr;

}; // struct goalMsg_

typedef ::local_planner_student::goalMsg_<std::allocator<void> > goalMsg;

typedef boost::shared_ptr< ::local_planner_student::goalMsg > goalMsgPtr;
typedef boost::shared_ptr< ::local_planner_student::goalMsg const> goalMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::local_planner_student::goalMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::local_planner_student::goalMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::local_planner_student::goalMsg_<ContainerAllocator1> & lhs, const ::local_planner_student::goalMsg_<ContainerAllocator2> & rhs)
{
  return lhs.goalPose2D == rhs.goalPose2D;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::local_planner_student::goalMsg_<ContainerAllocator1> & lhs, const ::local_planner_student::goalMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace local_planner_student

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::local_planner_student::goalMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::local_planner_student::goalMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::local_planner_student::goalMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::local_planner_student::goalMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::local_planner_student::goalMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::local_planner_student::goalMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::local_planner_student::goalMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "21fd91eaa80316a222eef309a3f9438e";
  }

  static const char* value(const ::local_planner_student::goalMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x21fd91eaa80316a2ULL;
  static const uint64_t static_value2 = 0x22eef309a3f9438eULL;
};

template<class ContainerAllocator>
struct DataType< ::local_planner_student::goalMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "local_planner_student/goalMsg";
  }

  static const char* value(const ::local_planner_student::goalMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::local_planner_student::goalMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose2D goalPose2D\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::local_planner_student::goalMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::local_planner_student::goalMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goalPose2D);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct goalMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::local_planner_student::goalMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::local_planner_student::goalMsg_<ContainerAllocator>& v)
  {
    s << indent << "goalPose2D: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.goalPose2D);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCAL_PLANNER_STUDENT_MESSAGE_GOALMSG_H