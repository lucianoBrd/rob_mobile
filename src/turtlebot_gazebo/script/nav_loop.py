#!/usr/bin/env python
import rospy

# Brings in the SimpleActionClient
import actionlib
# Brings in the .action file and messages used by the move base action
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

def movebase_client(typeA):

    a = {'header':{'frame_id':'map'},'pose':{'position':{'x':-14.666,'y':-5.168},'orientation':{'z':0,'w':1}}}
    b = {'header':{'frame_id':'map'},'pose':{'position':{'x':-9.4343,'y':-5.526},'orientation':{'z':1,'w':0}}}

    # Create an action client called "move_base" with action definition file "MoveBaseAction"
    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)

    # Waits until the action server has started up and started listening for goals.
    client.wait_for_server()

    # Creates a new goal with the MoveBaseGoal constructor
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    
    if typeA == True:
        goal.target_pose.pose.position.x = a['pose']['position']['x']
        goal.target_pose.pose.position.y = a['pose']['position']['y']
        
        goal.target_pose.pose.orientation.w = a['pose']['orientation']['w']
        goal.target_pose.pose.orientation.z = a['pose']['orientation']['z']
    else:
        goal.target_pose.pose.position.x = b['pose']['position']['x']
        goal.target_pose.pose.position.y = b['pose']['position']['y']
        
        goal.target_pose.pose.orientation.w = b['pose']['orientation']['w']
        goal.target_pose.pose.orientation.z = b['pose']['orientation']['z']

    # Sends the goal to the action server.
    client.send_goal(goal)
    # Waits for the server to finish performing the action.
    wait = client.wait_for_result()
    # If the result doesn't arrive, assume the Server is not available
    if not wait:
        rospy.logerr("Action server not available!")
        rospy.signal_shutdown("Action server not available!")
    else:
        # Result of executing the action
        return client.get_result()   

# If the python node is executed as main process (sourced directly)
if __name__ == '__main__':
    # Initializes a rospy node to let the SimpleActionClient publish and subscribe
    rospy.init_node('movebase_client_py')
    
    a = True
    
    try:
        
        while True:
            try:
                result = movebase_client(a)
                
                if result:
                    a = not a
                    rospy.loginfo("Goal execution done!")
            except rospy.ROSInterruptException:
                rospy.loginfo("Navigation test finished.")
    except KeyboardInterrupt:
        rospy.loginfo('interrupted!')
