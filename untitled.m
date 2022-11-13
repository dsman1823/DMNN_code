x = linspace(0,1,21);
y = -sin(.8*pi*x); 
net = fitnet(2);
net = configure(net,x,y);
net.inputs{1}.processFcns = {};
net.outputs{2}.processFcns = {};
[net, tr] = train(net,x,y);


