function [DS,DV,WS,WV] = makemanifoldd(X)
option.NeighborMode = 'KNN'; option.k = 5;
option.WeightMode = 'HeatKernel'; option.t = 10^1;
%% construct feature graph
WV = constructW(X',option);
DV = diag(sum(WV));
WV=full(WV);
DV=full(DV);
%% construct data graph
WS = constructW(X,option);
DS = diag(sum(WS));
WS=full(WS);
DS=full(DS);
end