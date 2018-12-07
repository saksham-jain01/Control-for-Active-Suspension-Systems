function[J,cons]= ASS(x)% objective function name
J=0; % initialize 
y=0;
cons=[]; % constrains if any
assignin('base','a',x(1)); 
assignin('base','b',x(2));
assignin('base','c',x(3));
%assignin('base','d',x(4));
sim('Active_suspension_simscape_model.slx');
[rows,columns] = size(simout);

for i = 1:rows
y = y + ((simout(i)*simout(i))/rows);
end
J = sqrt(y);


