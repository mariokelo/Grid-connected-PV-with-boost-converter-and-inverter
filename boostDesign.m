Ts=10e-6;
p=50e3; 
U=380; 
f=50; 
fsw=5e3;

Lf=( (0.1*U^2) / ( 2*pi*f*(p/3) ) );

Vmpp= 406;
V_bus_ref=800;
Vin=Vmpp;
Vo=V_bus_ref;
fsw_boost=5e3;
D=1-(Vin/Vo);
L_bound= ((1-D)^2)*D*(Vo^2)/(2*fsw_boost*p);
L_boost=10*L_bound;
C_boost_min=(D*p)/(0.01*Vo^2*fsw_boost);
C_boost=1000e-6;