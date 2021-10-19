__author__ = 'Jacques saraydaryan'

from AbstractShortPath import AbstractShortPath
from visualization_msgs.msg import MarkerArray
import math
import rospy
import numpy as np 


# import sys
# sys.path.append('../')


class Dijsktra(AbstractShortPath):
    INFINY = 9999
    SLEEP_TIME_BEFORE_NEXT_ITERATION = 0.01

    def __init__(self):
        print('')


    ###########################################################
    ################### Function Paramters ###################
    ###########################################################
    ### source: coordinate of the robot position source['x'] return the x position, source['y'] return the y position
    ###
    ### target: coordinate of the target position target['x'] return the x position, target['y'] return the y position
    ###
    ### matrix: rescaled map (including obstacles) matrix[i][j] return the value of the cell i,j of the matrix
    ###
    ### elf.MAP_OBSTACLE_VALUE: value of an obstacle into the matrix (-100)
    ###
    ### pub_marker: marker publisher to visualize information into rviz (usage pub_marker.publish(marker_container) )
    ###
    ### marker_container: marker container where where new marker are added as point
    ###
    def goto(self, source, target, matrix, pub_marker, marker_container):
        prev = {}

        score = {}
        unvisited = []

        end = False

        for i in range(len(matrix)):
            for j in range(len(matrix[0])):
                score[str(i)+'_'+str(j)] = self.INFINY
                unvisited.append({'x':i,'y':j})
        
        score[str(source['x'])+'_'+str(source['y'])] = 0

        
        while len(unvisited) != 0:

            s = self.minScore(score, unvisited)

            unvisited.remove(s)

            self.createClosedMarkerPt(s, marker_container)

            currentNeighbors=self.getNeighbors(s,matrix)

            for n in currentNeighbors:

                if self.inList(n,unvisited):

                    self.createFontierUnitMarkerPt(n, marker_container)

                    current_score = score[str(s['x']) + '_' + str(s['y'])] + 1 #self.computeDist(matrix,n,target)

                    print current_score

                    if current_score < score[str(n['x']) + '_' + str(n['y'])]:
                        score[str(n['x']) + '_' + str(n['y'])] = current_score
                        prev[str(n['x']) + '_' + str(n['y'])]=str(s['x']) + '_' + str(s['y'])

                    if str(n['x']) + '_' + str(n['y']) == str(target['x']) + '_' + str(target['y']):
                        return prev

            pub_marker.publish(marker_container)
            rospy.sleep(self.SLEEP_TIME_BEFORE_NEXT_ITERATION)

        return prev

    # Return the node that has the lowest score, information return like s={'x':5,'y':3}
    def minScore(self, score,frontier):
        min=self.INFINY
        min_coord=''
        for n in frontier:
            if score[str(n['x'])+'_'+str(n['y'])] < min :
                min=score[str(n['x'])+'_'+str(n['y'])]
                min_coord=n
        return min_coord

    # Compute Neighbors of the current point, Return the list of the point neighbors 
    def getNeighbors(self, currentNode, matrix):
        x_c = currentNode['x']
        y_c = currentNode['y']
        neighbors = []
        self.checkAndAdd(neighbors, x_c + 1, y_c, matrix)
        self.checkAndAdd(neighbors, x_c, y_c + 1, matrix)
        self.checkAndAdd(neighbors, x_c - 1, y_c, matrix)
        self.checkAndAdd(neighbors, x_c, y_c - 1, matrix)
        return neighbors

    # Check that the candidate neighbor is valid == not an obstacle, in current bound, add the nieghbor node to the node list
    def checkAndAdd(self, neighbors, x, y, matrix):
        if (x > 0 and x < self.map_width and y > 0 and y < self.map_height):
            if (matrix[y][x] != self.MAP_OBSTACLE_VALUE):
                neighbors.append({'x': x, 'y': y})
        return neighbors

    # Compute the distance between the given node and the target, the result is an estimation of the distance without taking into account obstacles
    def computeDist(self,matrix,source,destination):
        return math.sqrt(math.pow(source['x']-destination['x'],2)+math.pow(source['y']-destination['y'],2))

    # Check if the node is into the list, return boolean
    def inList(self,n,frontier):
        return n in frontier

        
