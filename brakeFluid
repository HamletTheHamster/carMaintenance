function [ yn ] = brake_fluid( cm )
%This function takes current mileage as input and determines whether a 
% break fluid change is required on the next oil change, based on
% a schedule of every 25,000 miles. If the fluid change is due, it prints
% "-Brake Fluid" among a list of any other required services on that oil 
% change.
%
%   cm = current mileage
%   ocs = oil change schedule
%   yn = yes/no
%
%   Coded by: Joel N. Johnson
%---------------------------------------------------------------------

ocs = zeros(20,1);                  %preallocates 20x1 array with zeros

for j = 1:20                        %assigns mileage schedule to array
    k = j - 1;
    ocs(j) = 40400 + (7500 * k);
end

if cm <= ocs(1)                     %Assigns 1 to yn when a fluid change
    yn = 0;                         % is due and assigns 0 to yn when one
elseif cm <= ocs(2)                 % is not due.
        yn = 1;                
elseif cm <= ocs(3)                 
        yn = 0;                
elseif cm <= ocs(4)                
        yn = 0;
elseif cm <= ocs(5)
        yn = 0;
elseif cm <= ocs(6)
        yn = 1;
elseif cm <= ocs(7)
        yn = 0;
elseif cm <= ocs(8)
        yn = 0;
elseif cm <= ocs(9)
        yn = 0;
elseif cm <= ocs(10)
        yn = 1;
elseif cm <= ocs(11)
        yn = 0;
elseif cm <= ocs(12)
        yn = 0;
elseif cm <= ocs(13)
        yn = 0;
elseif cm <= ocs(14)
        yn = 1;
elseif cm <= ocs(15)
        yn = 0;
elseif cm <= ocs(16)
        yn = 0;
elseif cm <= ocs(17)
        yn = 0;
elseif cm <= ocs(18)
        yn = 1;
elseif cm <= ocs(19)
        yn = 0;
elseif cm <= ocs(20)
        yn = 0;
end

if yn == 1
    fprintf('   -Brake Fluid\n')    %Prints "-Brake Fluid" among a
end                                 % list of any other services due.

end
