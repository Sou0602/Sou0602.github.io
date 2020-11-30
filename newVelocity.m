function v=newVelocity(v,phi)

    vx=v*cos(phi);
    vy=v*sin(phi);
    
    if vx>1
        vx=1;
    end
    if vy>1
        vy=1;
    end
    v=[vx,vy];
end