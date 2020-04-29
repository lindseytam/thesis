function dydt = Meskin1(t, y)
% Author: Ltam
% Description:
    % This function describes the Meskin system through the ODEs for all
    % four states and is called in the main function, Meskin_states.m, 
    % in order to generate a prediction.
    % The subscript parameter_values.m is also called here.
% Last Updated: 29 April 2020
% Inputs:   x: vector of intial state values
%           t: scalar value for time, use t=0
% Outputs:  dydt: vector that describes state values after they undergo a
%                 transformation
parameter_values;

dydt = [a_1 * y(3)^g_13 - b_1 * y(1)^h_11;
        a_2 * y(1)^g_21 - b_2 * y(2)^h_22;
        a_3 * y(2)^g_32 - b_3 * y(3)^h_33 * y(4)^h_34;
        a_4 * y(1)^g_41 - b_4 * y(4)^h_44];
end

