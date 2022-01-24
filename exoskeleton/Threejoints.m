for i=1:5
    Loc={};
    X_all=[];
    Y_all=[];
    Z_all=[];
    A={};
    theta=[rand,rand,rand,rand,rand-0.5*pi,rand-0.5*pi,rand];
    alpha=[-0.5*pi,0.5*pi,-0.5*pi,-0.5*pi,0.5*pi,-0.5*pi,0];
    a=[0,0,0.045,0.4,0,0,0];
    d=[0,0,0.55,0,0,0.1547,0];
    for k=1:numel(theta)
        Loc{1}=eye(4);
        A{k}=Rotz(theta(k))*Transz(d(k))*Transx(a(k))*Rotx(alpha(k));
    end
    X=[];Y=[];Z=[];
    for l=1:numel(theta)
        new=Loc{l}*A{l};
        Loc=[Loc,new];
        X=[X;Loc{1,l}(1,4)]
        Y=[Y;Loc{1,l}(2,4)];
        Z=[Z;Loc{1,l}(3,4)];
    end
    X_all=[X_all,X];
    Y_all=[Y_all,Y];
    Z_all=[Z_all,Z];
    plot3(X_all,Y_all,Z_all);hold on;
end