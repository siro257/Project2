function [success,q_connect,Ta,Tb] = RRT_Connect(qstart, qgoal, maxIter, step_length, circles)
    Ta = [qstart];
    Tb = [qgoal];
    success = 0;
    for i = 1 : maxIter
        q_rand = RandomConfig();
        [result,Ta,q_target] = RRT_Extend_Single(Ta,q_rand,step_length,circles);
        if result == 1
            [result2,Tb,q_connect] = RRT_Extend_Multiple(Tb,q_target,step_length,circles);
            if(result2==1)
                sucess=1;
                break
            end
        end
        [Ta,Tb] = SWAP(Ta, Tb); 
end

