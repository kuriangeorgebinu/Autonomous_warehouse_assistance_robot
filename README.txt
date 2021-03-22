This is a simulation for an autonomous warehouse assistance robot for my final year capstone project. The robot has three features incorporated into it: QR code based navigation, obstacle avoidance (rerouting algorithm) and line following algorithm. In this simulation, we are assuming for all three algorithms are present. 

The main purpose was to demonstrate transporation of goods & cargo from the loading area (bottom left corner of the map to the appropriate shelves of the warehouse autonomously). The shelves are represented by station names: A1, A2, A3, A4, B1, B2, B3, B4, C1, C2,C3,C4, D1,D2,D3,D4. Each letter represents each aisle. 


To run this simulation, click on the main_script.m to open the script. Before running, import Line_Following_Map.mat (Home -> Variable -> Import Data). After importing, run the script by going to editor and press run simulation. After this, the program will prompt you to place an obstacle on the map. You should write at which station the obstacle must be placed. For example, putting "A1" means that obstacle will be placed at station A1. After this prompt, the program will ask which stations to enter. For this just enter the stations in this format ["station1", "station2",...] (Include quotation marks and commas). For example, entering ["A2","A3","B2","B1"]. The station numbers in this list must not contain the station number which contains an obstacle. 

If the obstacle is at "A1" and list is ["A2","A3","B2","B1"], then the robot will have to go to "A2" but needs to pass "A1" first. However there is an obstacle present in "A1", so the robot will avoid "A1" and enter "A2" from the other side. 

If any questions about this project, please see video named "demo" for demonstration. Any other questions. Please contact: kgeor040@uottawa.ca. I would like to hear from you :). 

Have a nice day 

Kurian George Binu

