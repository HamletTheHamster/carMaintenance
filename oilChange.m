function [ oc ] = oil_change( cm )
%This function has the user input the current miles of the car and outputs
% what the mileage for the next oil change is. Oil changes are scheduled
% for every 7,500 miles, with the first one occuring at 40,400 miles.
%
%   cm = current miles
%   ocs = oil change schedule
%   oc = oil change
%
%   Coded by: Joel N. Johnson
%---------------------------------------------------------------------

ocs = zeros(20,1);                  %preallocates 20x1 array with zeros

for j = 1:20                        %assigns mileage schedule to array
    k = j - 1;
    ocs(j) = 40400 + (7500 * k);
end

if cm <= ocs(1)                     %if mileage is less than or equal
    oc = ocs(1);                    % to the mileage for the first oil
elseif cm <= ocs(2)                 % change, then an oil change is due
        oc = ocs(2);                % at the first oil change mileage.
elseif cm <= ocs(3)                 % If it is greater, then it continues
        oc = ocs(3);                % to the next elseif and the next
elseif cm <= ocs(4)                 % element in the mileage schedule.
        oc = ocs(4);
elseif cm <= ocs(5)
        oc = ocs(5);
elseif cm <= ocs(6)
        oc = ocs(6);
elseif cm <= ocs(7)
        oc = ocs(7);
elseif cm <= ocs(8)
        oc = ocs(8);
elseif cm <= ocs(9)
        oc = ocs(9);
elseif cm <= ocs(10)
        oc = ocs(10);
elseif cm <= ocs(11)
        oc = ocs(11);
elseif cm <= ocs(12)
        oc = ocs(12);
elseif cm <= ocs(13)
        oc = ocs(13);
elseif cm <= ocs(14)
        oc = ocs(14);
elseif cm <= ocs(15)
        oc = ocs(15);
elseif cm <= ocs(16)
        oc = ocs(16);
elseif cm <= ocs(17)
        oc = ocs(17);
elseif cm <= ocs(18)
        oc = ocs(18);
elseif cm <= ocs(19)
        oc = ocs(19);
elseif cm <= ocs(20)
        oc = ocs(20);
end

end
