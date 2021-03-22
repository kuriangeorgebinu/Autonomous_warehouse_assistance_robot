
aisle_obstacle = input("Enter position of obstacle\n"); 

aisle_list = input('Enter a list of Aisles you want to visit:\n');
aisle_cont = containers.Map(["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4","D1","D2","D3","D4"],[11,12,13,14,21,22,23,24,31,32,33,34,41,42,43,44]); 
aisle_obstacle_num = aisle_cont(aisle_obstacle); 
[xcor_min_a, ycor_min_a, xcor_max_a, y_cor_max_a] = aisle_branch(11); 
[xcor_min_b, ycor_min_b, xcor_max_b, y_cor_max_b] = aisle_branch(21);
[xcor_min_c, ycor_min_c, xcor_max_c, y_cor_max_c] = aisle_branch(31);
[xcor_min_d, ycor_min_d, xcor_max_d, y_cor_max_d] = aisle_branch(41);

xcor_min_e = 9.5;
xcor_max_e = 9.65; 

diff_ab = ((xcor_max_b-xcor_max_a)+(xcor_min_b-xcor_min_a))/2; 
diff_bc = ((xcor_max_c-xcor_max_b)+(xcor_min_c-xcor_min_b))/2; 
diff_cd = ((xcor_max_d-xcor_max_c)+(xcor_min_d-xcor_min_c))/2;
diff_de = ((xcor_max_e-xcor_max_d)+(xcor_min_e-xcor_min_d))/2;

distance_aisle= containers.Map(["A","B","C", "D"],[diff_ab, diff_bc, diff_cd, diff_de]);

[xcor_min_o, ycor_min_o, xcor_max_o, ycor_max_o] = aisle_branch(aisle_obstacle_num);



for index = 1:length(aisle_list)
    
        [xcor_min, ycor_min, xcor_max, ycor_max] = aisle_branch(aisle_cont(aisle_list(index)));
        aisle_desired = extractBetween(aisle_list(index), 1, 1);
        distance_diff = distance_aisle(aisle_desired);
        
        try 
            initial_x = double(state.yout{1}.Values.Data(length(state.yout{1}.Values.Data)-1));
            initial_y = double(state.yout{2}.Values.Data(length(state.yout{2}.Values.Data)-1));
            initial_theta = 90; 
            branch = logical(state.yout{3}.Values.Data(length(state.yout{3}.Values.Data)-1));
            
            save("variables.mat");
            [state] = sim('robot_model_control.slx');
        
        catch 
            initial_x = 0.5801; 
            initial_y = 0.4825;
            initial_theta = 0;  
            save("variables.mat");
            [state] = sim('robot_model_control.slx');
        
        end 
    
end 

function [aisle_letter] = aisle_extract(aisle)
    aisle_letter = aisle(1);
end 




