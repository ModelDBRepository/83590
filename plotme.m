%
% This MATLAB simple script plots f-I data points produced by the NEURON 
% simulation, Arsiero et al., 2007 - submitted.
%
figure(1); clf
x = load('TF.x'); plot(x(:,1)*1000, x(:,2:end),'.-');
xlabel('m [pA]'); 
ylabel('f [Hz]');
