function [aisle_list] = obstacle() 
%A1 - 11, A2 - 12, A3-13, A4-14, B1-21, B2-22, B3-23, B4-24, C1-31, C2-32,
%C3-33, C4-34, D1-41, D2-42, D3-43, D4-44 
keys = [11,12,13,14,21,22,23,24,31,32,33,34,41,42,43,44];
obstacle_map = containers.Map([11,12,13,14,21,22,23,24,31,32,33,34,41,42,43,44], [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
i = 1;
for index = 1:length(keys)
    key= keys(index); 
    obstacle_state = obstacle_map(key); 
    if(obstacle_state)
        aisle_list(i) = key;
        i=i+1;
    end 
    
end 
end