function [xcor_min, ycor_min, xcor_max, ycor_max] = aisle_branch(aisle_num)
xcor_min_list = containers.Map([11, 12, 13, 14, 21, 22, 23, 24, 31, 32, 33, 34, 41,42,43,44], [2.15, 2.15, 2.15, 2.15,3.94, 3.94, 3.94, 3.94, 5.6, 5.6, 5.6, 5.6, 7.45, 7.45, 7.45, 7.45]);
xcor_max_list = containers.Map([11, 12, 13, 14, 21, 22, 23, 24, 31, 32, 33, 34, 41,42,43,44], [2.2, 2.2, 2.2, 2.2, 3.97, 3.97, 3.97, 3.97, 5.65, 5.65, 5.65, 5.65, 7.5, 7.5, 7.5, 7.5]); 
ycor_min_list = containers.Map([11, 12, 13, 14, 21, 22, 23, 24, 31, 32, 33, 34, 41,42,43,44], [1.5, 2.5, 3.4, 4.3, 1.5, 2.5, 3.45, 4.3, 1.5, 2.5, 3.45, 4.3,1.5,2.5,3.45,4.3]); 
ycor_max_list = containers.Map([11, 12, 13, 14, 21, 22, 23, 24, 31, 32, 33, 34, 41,42,43,44], [1.6, 2.6, 3.5, 4.4, 1.6, 2.6, 3.5, 4.4, 1.6, 2.6, 3.5, 4.4, 1.6, 2.6, 3.5, 4.4]); 
y_branch_min = 0.5;
y_branch_max = 5.2; 
xcor_min = xcor_min_list(aisle_num); 
xcor_max = xcor_max_list(aisle_num); 
ycor_min = ycor_min_list(aisle_num); 
ycor_max = ycor_max_list(aisle_num); 
end 

    