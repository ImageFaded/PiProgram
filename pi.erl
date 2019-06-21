% 
%	Name - Tommy Walton
%	Course - AC41011 Big Data
% 	Code 1 - Pi Calculation
%

%Declare pi module and export functions
-module (pi).
-export ([piCall/0]).
-export ([piCalc/4]).

%Used to call main calculation function with correct values
piCall() -> piCalc(0,1,1,4).

%Calculates Pi to 5 decimal places
piCalc(Amount,Sign,Denominator, Mf) ->
	%Sets accuracy to 5 decimal places
	Accuracy = 0.00001,
	FractionValue = 1/Denominator,
	%When the FractionValue becomes greater than Accuracy value
	case FractionValue > Accuracy of
		%Write value multipled my multipication factor to 5 decimal places
		false -> io:fwrite("~.5f~n", [Amount*Mf]);
		%Call function and input new values
		true -> piCalc(Amount+(Sign*FractionValue),(Sign*-1),(Denominator+2),Mf)
	end.

