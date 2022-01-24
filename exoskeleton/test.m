n=0
s=0
for theta1=0:pi/6:pi
   theta(1)=theta1;
   for theta2=0:pi/6:pi
     theta(2)=theta2;
     for theta3=0:pi/6:pi
       theta(3)=theta3;
       for theta4=0:pi/6:pi
        theta(4)=theta4;
        for theta5=0:pi/6:pi
            theta(5)=theta5;
            for theta6=0:pi/6:pi
                theta(6)=theta6;
                for theta7=0:pi/6:pi
                    theta(7)=theta7;
                    J = Jacb0(theta);
                    s=s+1;
                    if rank(J)<3
                        result = theta
                        n=n+1
                        plot(theta);hold on;
                        break
                    end
                end
            end
        end
       end
     end
   end
end
q='end'