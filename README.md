# Introduction
## Monte Carlo simulation is used to determine the range of outcomes for a series of parameters, each of which has a probability distribution showing how likely each option is to happen. In this project, you will take a scenario and develop a Monte Carlo simulation of it, determining how likely a particular output is to ## happen.

## Clearly, this is very parallelizable -- it is the same computation being run on many permutations of the input parameters. You will run this with OpenMP, testing it on different numbers of threads (at least 1, 2, 4, 6, and 8).


# The Scenario
## This project is inspired by this video. Be sure to watch it before reading on (it's only 41 seconds).

## A golf ball is set in motion at the top of a ski jump at height BeforeY. It rolls until its height is AfterY at which point it shoots out horizontally. It continues until it hits the ground. A hole of radius RADIUS exists at a horizontal distance DistX from the end of the ski jump. Will the golf ball land inthe hole?


## If we knew the exact measurements, we could figure this out exactly, but we don't have exact measurments. Several people have taken measurements and all have come up with different numbers. Their mean measurements and tolerances (±) are shown in the table below:
## Quantity	Mean Value	± Value
## BeforeY	80.f	5.f
## AfterY	20.f	1.f
## DistX	70.f	5.f

## Given all of this uncertainty of the dimensions, what is the probability that the golf ball will actually end up in the cup?

## OK, you physics hounds, knock it off. Yes, we are going to neglect depth effects, moment of inertia, air resistance, etc, etc. Let's just have fun with this problem as stated.


# Requirements:

 Run this for some combinations of trials (NUMTRIALS) and threads (NUMT). Do timing for each combination. Like we talked about in the Project Notes, run each experiment some number of times (NUMTIMES) and record just the peak performance.

 Produce a rectangular table and two graphs. The two graphs need to be:

 Performance versus the number of Monte Carlo trials, with the colored lines being the number of OpenMP threads.
 Performance versus the number of OpenMP threads, with the colored lines being the number of Monte Carlo trials.
 (See the Project Notes, Scripting, Graphing, and Pivot Tables to see an example of this and how to get Excel to do most of the work for you.)
 Choosing one of the runs (one of the ones with the maximum number of trials would be good), tell me what you think the actual probability is.

 Choosing one of the runs, compute Fp, the Parallel Fraction, for this computation.

 Given this Parallel Fraction, what would the maximum speedup be if you could throw hundreds of cores at it?


 Does a Ball End Up in the Cup?


 Compute vx, the horizontal velocity coming off the ski jump ramp.
 Compute t, the time to reach the ground from the ski jump ramp.
 Compute dx, the horizontal distance traveled before landing on the ground.
 The ball is considered to have landed in the cup if the absolute value (C/C++ fabs function) of the distance (dx - distx) is <= the RADIUS.
