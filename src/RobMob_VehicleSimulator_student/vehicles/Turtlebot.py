#!/usr/bin/env python  

__author__ = 'Raphael Leber'

from math import cos, sin, tan, pi, sqrt, atan2, fmod, fabs, copysign
import turtle  
import time

from vehicles.Vehicle import Vehicle
from PathTools import PathTools



class Turtlebot(Vehicle):

    def __init__(self, x=0, y=0, theta=0, Ks=100, Kv=1, T=1.8, dt = 0.003):
        self.x = x
        self.y = y
        self.theta = theta
        self.Ks = Ks
        self.Kv = Kv         
        self.T = T
        self.dt = dt
        self.throttle_min = 600
        self.throttle_max = 2000        




    def model(self, vr,vl):
        """  Turtlebot model
                           ___________________
                          |                   |
                          |                   |---> x           
                   Vr --->|                   |    
                          |      Turtlebot    |
                   Vl---->|                   |---> y
                          |       Model       |                        
                          |                   |   
                          |                   |---> theta      
                          |___________________|          
        """        
        v = 1/2 * (vr + vl)
        w = (vr - vl) / self.T
        dt = self.dt

        x_p = v * cos(self.theta)
        y_p = v * sin(self.theta)
        theta_p =  w

        self.x = self.x + x_p*dt
        self.y = self.y + y_p*dt
        self.theta = self.theta + theta_p*dt

        return self.x, self.y, self.theta



    def toPoint(self, x, y, eps=0.5):
        """ Move to a point (x, y)

            Parameters:
            x (int): x coordinate to reach in the map
            y (int): y coordinate to reach in the map
            eps (float): epsilon below which we consider the goal is reached

            Returns:
            float: Returning throttle value (corresponding to euclidian distance vehicle-->goal) 

        """   
        Ks = self.Ks
        Kv = self.Kv          
        eucli_throttle = eps
        while eucli_throttle >= eps:

            eucli_throttle = sqrt( (x-self.x)**2 + (y-self.y)**2 )
            steering = atan2(  (y-self.y)  , (x-self.x) )

            v = max(min(eucli_throttle * Kv, self.throttle_max), self.throttle_min)
            s = sin(PathTools().shortestAngleDiff(steering, self.theta)) * Ks

            vr = v + s
            vl = v - s
        
            self.model(vr, vl)

            yield eucli_throttle  




    def turn(self, phi, eps_angle=0.1):
        s=1
        print(s)
        while fabs(s) > eps_angle:
            s = PathTools().shortestAngleDiff(phi, self.theta)
            if phi > 0:
                vr = self.Ks
                vl = -self.Ks
            else:
                vr = -self.Ks
                vl = self.Ks
            self.model(vr,vl)

            yield s   


    
    def toPose(self, x, y, theta):

        pass





    