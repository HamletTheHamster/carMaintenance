function [ ] = services( cm )
%This function takes current mileage as input and determines when the
% next oil change is due along with determining what other services are
% due based on their own service schedules. It displays in prose the
% mileage date of the next oil change and how many miles remaining until
% that mileage date is reached. It then displays any further services that
% are due at the next oil change in list format.
%
%   cm = current miles
%   oc = oil change
%   ml = miles left
%
%   Coded by: Joel N. Johnson
%------------------------------------------------------------------------

if cm > 182900
    fprintf('\n     It''s just time for a new car, man.\n\n')
elseif cm < 0
    fprintf('\n     You''ve entered a negative mileage. Change the')
    fprintf(' current mileage to a positive number by editing the ')
    fprintf('script file. Then rerun the file.\n\n')
else
    oc = oil_change(cm);
    ml = oc - cm;
    
    %want: function(s) that tells you if other services are due on this oil
    %       change, like tire rotation every other oil change, transmission
    %       fluid at 70k miles, brake fluid etc.
    
    fprintf('\n     Your next oil change is scheduled for %i miles', oc)
    fprintf(', so you have %i miles left \nuntil an oil change is ', ml) 
    fprintf('required. Other services due for this oil change: \n\n')
    
    a = tire_rotation(cm);
    b = transmission(cm);
    c = spark_plugs(cm);
    d = brake_fluid(cm);
    
    if a == 0
        if b==0
            if c==0
                if d==0
                    fprintf('   None!\n')
                end
            end
        end
    end
    
    fprintf('\n')
end

end
