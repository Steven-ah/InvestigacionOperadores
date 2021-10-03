%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% This program solves a sample max-flow-min-cut 
% problem by the Ford-Fulkerson Algorithm
% Author: Karl Ezra Pilario (Updated last: May 14, 2013)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Input Network as Adjacency Matrix
     f = 0;s=1;t=9;%s= nodo origen, t=nodo destino
    len = length(cap);
        
%% Ford-Fulkerson Algorithm
    while true
        p = findPath(cap);
        if p(1) == 0, break; end
        flow = max(max(cap));
        for j = 2:length(p)
            flow = min(flow,cap(p(j),p(j-1)));
        end
        for j = 2:length(p)
            a = p(j); b = p(j-1);
            cap(a,b) = cap(a,b) - flow;
            cap(b,a) = cap(b,a) + flow;
        end
        f = f + flow;
    end
    disp(['Max flow is ' num2str(f)]);
    disp('Residual graph:');
    disp(cap);
