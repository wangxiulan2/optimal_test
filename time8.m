%动态,将曝气也换成动态
%将步长变为0.25
global baoqi yanyang queyang
baoqi=1;
yanyang=1;
queyang=1;
ybq_sum=[];
ybq_sum2=[];
ybq_sum3=[];
%%baoqi
    baoqi=2;
     %%%%%%%%%%%%%%%%%%%%queyang
        queyang=1
        x_optimal=x0;
        [t1,x_temp]=reac_sbr2(x_optimal,[0 yanyang]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr10(x_optimal,[yanyang yanyang+baoqi]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr2(x_optimal,[yanyang+baoqi yanyang+baoqi+queyang]);
        x_optimal=x_temp;
       if (x_optimal(5)+x_optimal(7))<=18
           tn=0
       else
           tn=x_optimal(5)+x_optimal(7)-18
       end
       if (x_optimal(8)<=0.8)
           tp=0;
       else
           tp=(x_optimal(8)-0.8);
       end
       if (x_optimal(5)<=1.8)
           th=0;
       else
           th=(x_optimal(5)-1.8);
       end
       objtnp=100*tn+100*tp+100*th+baoqi;
       ybq_sum=[];
       ybq_sum=[ybq_sum;[yanyang baoqi queyang objtnp]];
       queyang=queyang+0.25
        while (queyang>=1)&(queyang<=4)
            
            objtnpold=objtnp
         x_optimal=x0;
        [t1,x_temp]=reac_sbr2(x_optimal,[0 yanyang]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr10(x_optimal,[yanyang yanyang+baoqi]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr2(x_optimal,[yanyang+baoqi yanyang+baoqi+queyang]);
        x_optimal=x_temp;
       if (x_optimal(5)+x_optimal(7))<=18
           tn=0
       else
           tn=x_optimal(5)+x_optimal(7)-18
       end
       if (x_optimal(8)<=0.8)
           tp=0;
       else
           tp=(x_optimal(8)-0.8);
       end
       if (x_optimal(5)<=1.8)
           th=0;
       else
           th=(x_optimal(5)-1.8);
       end
       objtnp=100*tn+100*tp+100*th+baoqi;
       ybq_sum=[ybq_sum;[yanyang baoqi queyang objtnp]];
       if objtnp>objtnpold
           break;
       end
       queyang=queyang+0.25
   end
   [min_objtnp,minhang]=min(ybq_sum(:,4));%试试曝气动态
   objtnp2=min_objtnp;
    ybq_sum=ybq_sum(minhang,[1 2 3 4 ]);
     [min_objtnp,minhang]=min(ybq_sum(:,2));
      baoqi=min_objtnp;
      ybq_sum=ybq_sum(minhang,[1 2 3 4]);
      [min_objtnp,minhang]=min(ybq_sum(:,3))
       queyang=min_objtnp;
       ybq_sum=ybq_sum(minhang,[1 2 3 4]);
       [min_objtnp,minhang]=min(ybq_sum(:,1))
       yanyang=min_objtnp;
       ybq_sum2=[];
       ybq_sum2=[ybq_sum2;[yanyang baoqi queyang objtnp2]];
   baoqi=baoqi+0.25
   %%%%%%%%%%%%%%%%%%%%queyang
    while (baoqi>=1)&(baoqi<=4)
        objtnpold2=objtnp2
    %%%%%%%%%%%%%%%%%%%%queyang
        queyang=1
        x_optimal=x0;
        [t1,x_temp]=reac_sbr2(x_optimal,[0 yanyang]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr10(x_optimal,[yanyang yanyang+baoqi]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr2(x_optimal,[yanyang+baoqi yanyang+baoqi+queyang]);
        x_optimal=x_temp;
       if (x_optimal(5)+x_optimal(7))<=18
           tn=0
       else
           tn=x_optimal(5)+x_optimal(7)-18
       end
       if (x_optimal(8)<=0.8)
           tp=0;
       else
           tp=(x_optimal(8)-0.8);
       end
       if (x_optimal(5)<=1.8)
           th=0;
       else
           th=(x_optimal(5)-1.8);
       end
       objtnp=100*tn+100*tp+100*th+baoqi;
       ybq_sum=[];
       ybq_sum=[ybq_sum;[yanyang baoqi queyang objtnp]];
       queyang=queyang+0.25
        while (queyang>=1)&(queyang<=4)
            
            objtnpold=objtnp
         x_optimal=x0;
        [t1,x_temp]=reac_sbr2(x_optimal,[0 yanyang]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr10(x_optimal,[yanyang yanyang+baoqi]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr2(x_optimal,[yanyang+baoqi yanyang+baoqi+queyang]);
        x_optimal=x_temp;
       if (x_optimal(5)+x_optimal(7))<=18
           tn=0
       else
           tn=x_optimal(5)+x_optimal(7)-18
       end
       if (x_optimal(8)<=0.8)
           tp=0;
       else
           tp=(x_optimal(8)-0.8);
       end
       if (x_optimal(5)<=1.8)
           th=0;
       else
           th=(x_optimal(5)-1.8);
       end
       objtnp=100*tn+100*tp+100*th+baoqi;
       ybq_sum=[ybq_sum;[yanyang baoqi queyang objtnp]];
       if objtnp>objtnpold
           break;
       end
       queyang=queyang+0.25
   end
   %%%%%%%%%%%%%%%%%%%%queyang
    [min_objtnp,minhang]=min(ybq_sum(:,4));%试试曝气动态
   objtnp2=min_objtnp;
    ybq_sum=ybq_sum(minhang,[1 2 3 4 ]);
     [min_objtnp,minhang]=min(ybq_sum(:,2));
      baoqi=min_objtnp;
      ybq_sum=ybq_sum(minhang,[1 2 3 4]);
      [min_objtnp,minhang]=min(ybq_sum(:,3))
       queyang=min_objtnp;
       ybq_sum=ybq_sum(minhang,[1 2 3 4]);
       [min_objtnp,minhang]=min(ybq_sum(:,1))
       yanyang=min_objtnp;
       ybq_sum2=[ybq_sum2;[yanyang baoqi queyang objtnp2]];
       if objtnp2>objtnpold2
           break;
       end
        baoqi=baoqi+0.25
       
end 
%%baoqi
 [min_objtnp,minhang]=min(ybq_sum2(:,4));%试试曝气动态
   objtnp3=min_objtnp;
    ybq_sum2=ybq_sum2(minhang,[1 2 3 4 ]);
     [min_objtnp,minhang]=min(ybq_sum2(:,2));
      baoqi=min_objtnp;
      ybq_sum2=ybq_sum2(minhang,[1 2 3 4]);
      [min_objtnp,minhang]=min(ybq_sum2(:,3))
       queyang=min_objtnp;
       ybq_sum2=ybq_sum2(minhang,[1 2 3 4]);
       [min_objtnp,minhang]=min(ybq_sum2(:,1))
       yanyang=min_objtnp;
       ybq_sum3=[ybq_sum3;[yanyang baoqi queyang objtnp3]];
   yanyang=yanyang+0.25






while (yanyang>=1)&(yanyang<=4)
        objtnpold3=objtnp3
    %%baoqi
    baoqi=1;
     %%%%%%%%%%%%%%%%%%%%queyang
        queyang=1
        x_optimal=x0;
        [t1,x_temp]=reac_sbr2(x_optimal,[0 yanyang]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr10(x_optimal,[yanyang yanyang+baoqi]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr2(x_optimal,[yanyang+baoqi yanyang+baoqi+queyang]);
        x_optimal=x_temp;
       if (x_optimal(5)+x_optimal(7))<=18
           tn=0
       else
           tn=x_optimal(5)+x_optimal(7)-18
       end
       if (x_optimal(8)<=0.8)
           tp=0;
       else
           tp=(x_optimal(8)-0.8);
       end
       if (x_optimal(5)<=1.8)
           th=0;
       else
           th=(x_optimal(5)-1.8);
       end
       objtnp=100*tn+100*tp+100*th+baoqi;
       ybq_sum=[];
       ybq_sum=[ybq_sum;[yanyang baoqi queyang objtnp]];
       queyang=queyang+0.25
        while (queyang>=1)&(queyang<=4)
            
            objtnpold=objtnp
         x_optimal=x0;
        [t1,x_temp]=reac_sbr2(x_optimal,[0 yanyang]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr10(x_optimal,[yanyang yanyang+baoqi]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr2(x_optimal,[yanyang+baoqi yanyang+baoqi+queyang]);
        x_optimal=x_temp;
       if (x_optimal(5)+x_optimal(7))<=18
           tn=0
       else
           tn=x_optimal(5)+x_optimal(7)-18
       end
       if (x_optimal(8)<=0.8)
           tp=0;
       else
           tp=(x_optimal(8)-0.8);
       end
       if (x_optimal(5)<=1.8)
           th=0;
       else
           th=(x_optimal(5)-1.8);
       end
       objtnp=100*tn+100*tp+100*th+baoqi;
       ybq_sum=[ybq_sum;[yanyang baoqi queyang objtnp]];
       if objtnp>objtnpold
           break;
       end
       queyang=queyang+0.25
   end
   [min_objtnp,minhang]=min(ybq_sum(:,4));%试试曝气动态
   objtnp2=min_objtnp;
    ybq_sum=ybq_sum(minhang,[1 2 3 4 ]);
     [min_objtnp,minhang]=min(ybq_sum(:,2));
      baoqi=min_objtnp;
      ybq_sum=ybq_sum(minhang,[1 2 3 4]);
      [min_objtnp,minhang]=min(ybq_sum(:,3))
       queyang=min_objtnp;
       ybq_sum=ybq_sum(minhang,[1 2 3 4]);
       [min_objtnp,minhang]=min(ybq_sum(:,1))
       yanyang=min_objtnp;
       ybq_sum2=[];
       ybq_sum2=[ybq_sum2;[yanyang baoqi queyang objtnp2]];
   baoqi=baoqi+0.25
   %%%%%%%%%%%%%%%%%%%%queyang
    while (baoqi>=1)&(baoqi<=4)
        objtnpold2=objtnp2
    %%%%%%%%%%%%%%%%%%%%queyang
        queyang=1
        x_optimal=x0;
        [t1,x_temp]=reac_sbr2(x_optimal,[0 yanyang]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr10(x_optimal,[yanyang yanyang+baoqi]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr2(x_optimal,[yanyang+baoqi yanyang+baoqi+queyang]);
        x_optimal=x_temp;
       if (x_optimal(5)+x_optimal(7))<=18
           tn=0
       else
           tn=x_optimal(5)+x_optimal(7)-18
       end
       if (x_optimal(8)<=0.8)
           tp=0;
       else
           tp=(x_optimal(8)-0.8);
       end
       if (x_optimal(5)<=1.8)
           th=0;
       else
           th=(x_optimal(5)-1.8);
       end
       objtnp=100*tn+100*tp+100*th+baoqi;
       ybq_sum=[];
       ybq_sum=[ybq_sum;[yanyang baoqi queyang objtnp]];
       queyang=queyang+0.25
        while (queyang>=1)&(queyang<=4)
            
            objtnpold=objtnp
         x_optimal=x0;
        [t1,x_temp]=reac_sbr2(x_optimal,[0 yanyang]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr10(x_optimal,[yanyang yanyang+baoqi]);
        x_optimal=x_temp;
        [t1,x_temp]=reac_sbr2(x_optimal,[yanyang+baoqi yanyang+baoqi+queyang]);
        x_optimal=x_temp;
       if (x_optimal(5)+x_optimal(7))<=18
           tn=0
       else
           tn=x_optimal(5)+x_optimal(7)-18
       end
       if (x_optimal(8)<=0.8)
           tp=0;
       else
           tp=(x_optimal(8)-0.8);
       end
       if (x_optimal(5)<=1.8)
           th=0;
       else
           th=(x_optimal(5)-1.8);
       end
       objtnp=100*tn+100*tp+100*th+baoqi;
       ybq_sum=[ybq_sum;[yanyang baoqi queyang objtnp]];
       if objtnp>objtnpold
           break;
       end
       queyang=queyang+0.25
   end
   %%%%%%%%%%%%%%%%%%%%queyang
    [min_objtnp,minhang]=min(ybq_sum(:,4));%试试曝气动态
   objtnp2=min_objtnp;
    ybq_sum=ybq_sum(minhang,[1 2 3 4 ]);
     [min_objtnp,minhang]=min(ybq_sum(:,2));
      baoqi=min_objtnp;
      ybq_sum=ybq_sum(minhang,[1 2 3 4]);
      [min_objtnp,minhang]=min(ybq_sum(:,3))
       queyang=min_objtnp;
       ybq_sum=ybq_sum(minhang,[1 2 3 4]);
       [min_objtnp,minhang]=min(ybq_sum(:,1))
       yanyang=min_objtnp;
       ybq_sum2=[ybq_sum2;[yanyang baoqi queyang objtnp2]];
       if objtnp2>objtnpold2
           break;
       end
        baoqi=baoqi+0.25
       
end 
%%baoqi
[min_objtnp,minhang]=min(ybq_sum2(:,4));%试试曝气动态
   objtnp3=min_objtnp;
    ybq_sum2=ybq_sum2(minhang,[1 2 3 4 ]);
     [min_objtnp,minhang]=min(ybq_sum2(:,2));
      baoqi=min_objtnp;
      ybq_sum2=ybq_sum2(minhang,[1 2 3 4]);
      [min_objtnp,minhang]=min(ybq_sum2(:,3))
       queyang=min_objtnp;
       ybq_sum2=ybq_sum2(minhang,[1 2 3 4]);
       [min_objtnp,minhang]=min(ybq_sum2(:,1))
       yanyang=min_objtnp;
       ybq_sum3=[ybq_sum3;[yanyang baoqi queyang objtnp3]];
       if objtnp3>objtnpold3
           break;
       end
   yanyang=yanyang+0.25

end   
       [min_objtnp,minhang]=min(ybq_sum3(:,4));
       objtnp=min_objtnp;
      ybq_sum3=ybq_sum3(minhang,[1 2 3 4 ]);
       [min_objtnp,minhang]=min(ybq_sum3(:,2));
       baoqi=min_objtnp;
       ybq_sum3=ybq_sum3(minhang,[1 2 3 4]);
       [min_objtnp,minhang]=min(ybq_sum3(:,3))
       queyang=min_objtnp;
       ybq_sum3=ybq_sum3(minhang,[1 2 3 4]);
       [min_objtnp,minhang]=min(ybq_sum3(:,1))
       yanyang=min_objtnp;
