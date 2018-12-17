%% Used for setting the location of target and anchor nodes in WSN
function [phi,alpha]=place(side,nNodes,nAnchors)
%Randomly place target nodes
phi=rand(2,nNodes)*side;
%Place anchor nodes at fixed locations
if nAnchors==4
    alpha=[[0.25;0.25] [0.75;0.25] [0.25;0.75] [0.75;.75]]*side;
elseif nAnchors==8
    alpha=[[0.25;0.25] [0.75;0.25] [0.25;0.75] [0.75;.75]...
        [0;0] [1;0] [1;1] [0;1]]*side;
elseif nAnchors==12
    alpha=[[0.25;0.25] [0.75;0.25] [0.25;0.75] [0.75;.75]...
        [0;0] [1;0] [1;1] [0;1]...
        [0;0.33] [0;0.66] [0.33;0] [0.66;0]]*side;
elseif nAnchors==16
    alpha=[[0.25;0.25] [0.75;0.25] [0.25;0.75] [0.75;.75]...
        [0;0] [1;0] [1;1] [0;1]...
        [0;0.33] [0;0.66] [0.33;0] [0.66;0] [1;0.33] [1;0.66] [0.33;1] [0.66;1]]*side;
elseif nAnchors==20
    alpha=[[0.25;0.25] [0.75;0.25] [0.25;0.75] [0.75;.75]...
        [0;0] [1;0] [1;1] [0;1]...
        [0;0.33] [0;0.66] [0.33;0] [0.66;0] [1;0.33] [1;0.66] [0.33;1] [0.66;1]...
        [0;0.5] [0.5;0] [1;0.5] [0.5;1]]*side;
end
end