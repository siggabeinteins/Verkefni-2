close all
clear all

A = [15600 18760 17610 19170];
B = [7540 2750 14630 610];
C = [20140 18610 13480 1829];
t = [0.07074 0.07220 0.07690 0.07242];
c = 299792.458;

syms x y z d;
for i = 1:4
    r{i} = sqrt((x-A(i))^2+(y-B(i))^2+(z-C(i))^2)-c*(t(i)-d);
end


% for i=1:4
%     r{i} = @(x,y,z,d) sqrt((x-A(i))^2+(y-B(i))^2+(z-C(i))^2)-c*(t(i)-d);
% end

jac=jacobian([r{1} r{2} r{3} r{4}],[x; y; z; d]);
% Jac=[jac(1:4);jac(5:8);jac(9:12);jac(13:16)]';
