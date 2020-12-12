function [T1,T2] = SWAP(Ta,Tb)
    LA = size(Ta,1);
    LB = size(Tb,1);
    if  LB < LA
        T1 = Tb; 
        T2 = Ta;
    else
        T1 = Ta; 
        T2 = Tb;
    end
end

