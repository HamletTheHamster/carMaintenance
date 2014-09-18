function [ yn ] = tire_rotation( cm )
%This function takes the current mileage as input and determines whether
% a tire rotation is due based on a schedule of every 15,000 miles. If a
% rotation is due, it prints "-Tire Rotation" among a list of any other
% required services on that oil change.
%
%   cm = current mileage
%   ocs = oil change schedule
%   yn = yes/no
%
%   Coded by: Joel N. Johnson
%----------------------------------------------------------------------

ocs = zeros(20,1);                  %preallocates 20x1 array with zeros

for j = 1:20                        %assigns mileage schedule to array
    k = j - 1;
    ocs(j) = 40400 + (7500 * k);
end

if cm <= ocs(1)                     %Assigns 1 to yn when a tire rotation
    yn = 0;                         % is due and assigns 0 to yn when one
elseif cm <= ocs(2)                 % is not due.
        yn = 1;                
elseif cm <= ocs(3)                 
        yn = 0;                
elseif cm <= ocs(4)                
        yn = 1;
elseif cm <= ocs(5)
        yn = 0;
elseif cm <= ocs(6)
        yn = 1;
elseif cm <= ocs(7)
        yn = 0;
elseif cm <= ocs(8)
        yn = 1;
elseif cm <= ocs(9)
        yn = 0;
elseif cm <= ocs(10)
        yn = 1;
elseif cm <= ocs(11)
        yn = 0;
elseif cm <= ocs(12)
        yn = 1;
elseif cm <= ocs(13)
        yn = 0;
elseif cm <= ocs(14)
        yn = 1;
elseif cm <= ocs(15)
        yn = 0;
elseif cm <= ocs(16)
        yn = 1;
elseif cm <= ocs(17)
        yn = 0;
elseif cm <= ocs(18)
        yn = 1;
elseif cm <= ocs(19)
        yn = 0;
elseif cm <= ocs(20)
        yn = 1;
end

if yn == 1
    fprintf('   -Tire Rotation\n')   %Prints "Tire Rotation" among list of
end                                 % any other services due.

end
