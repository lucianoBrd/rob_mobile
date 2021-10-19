__author__ = 'Jacques saraydaryan'

from AbstractShortPath import AbstractShortPath
import math
import rospy
from visualization_msgs.msg import MarkerArray
import itertools
import numpy as np 


# sys.path.append('../')


class AStar(AbstractShortPath):
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
        start = {'x': source['x'], 'y': source['y'], 'cost': 1}

        closedList = []
        openList = [start]

        unvisited = [str(x) + '_' + str(y) for x in range(len(matrix)) for y in range(len(matrix[0]))]
        unvisited.remove(str(source['x']) + '_' + str(source['y']))

        gscore = { str(source['x']) + '_' + str(source['y']): 0 }
        fscore = { str(source['x']) + '_' + str(source['y']): 0 }

        prev = {}

        for c in unvisited:
            gscore[c] = np.inf
            fscore[c] = np.inf
            prev[c] = None

        while len(openList):

            u = None
            umin = np.inf

            for a in openList:

                score = fscore[str(a['x']) + '_' + str(a['y'])]

                if score < umin:
                    umin = score
                    u = a

            if str(u['x']) + '_' + str(u['y']) == str(target['x']) + '_' + str(target['y']):
                return prev

            self.createClosedMarkerPt(u, marker_container)

            openList.remove(u)
            closedList.append(u)

            for v in self.getNeighbors(u, matrix):
                if self.inList(v, closedList):
                    continue
                v_score = gscore[str(u['x']) + '_' + str(u['y'])] + self.computeDist(matrix, u, v)
                if not self.inList(v, openList):
                    self.createFontierUnitMarkerPt(v, marker_container)
                    openList.append(v)
                elif v_score >= gscore[str(v['x']) + '_' + str(v['y'])]:
                    continue
                prev[str(v['x']) + '_' + str(v['y'])] = str(u['x']) + '_' + str(u['y'])
                gscore[str(v['x']) + '_' + str(v['y'])] = v_score
                fscore[str(v['x']) + '_' + str(v['y'])] =  gscore[str(v['x']) + '_' + str(v['y'])] + self.computeDist(matrix, v, target)
            pub_marker.publish(marker_container)
            
            rospy.sleep(self.SLEEP_TIME_BEFORE_NEXT_ITERATION)


        return None

    def inList(self, v, list):
        return next((a for a in list if (str(a['x']) + '_' + str(a['y']) == str(v['x']) + '_' + str(v['y']))), False) != False

    # Compute Neighbors of the current point, Return the list of the point neighbors in Cfree
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
        if (x > 0 and x < len(matrix) and y > 0 and y < len(matrix[0])):
            if (matrix[y][x] != self.MAP_OBSTACLE_VALUE):
                neighbors.append({'x': x, 'y': y})
        return neighbors

    # Compute the distance between the given node and the target, the result is an estimation of the distance without taking into account obstacles
    def computeDist(self,matrix,source,target):
        return math.sqrt((target['x']-source['x'])**2 + (target['y']-source['y'])**2)

