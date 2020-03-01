a=0.3;
Tzew=-20:1:40;
TzewN=-20;
TwewN=20;
TpN=10;
qN=1000;

Kcp=(1+a)*a*(TwewN-TpN)*(TwewN-10)/(1000*(10-TzewN));
Kcw=qN / ( (1+a)*TwewN-TzewN-a*TpN);

%Twew1=( q1+(Kcw+Kcp)*Tzew) / Kcw  ;
%TWW = (q1+Kcw*Tzew+a*Kcw* (a*q1+(a*Kcw+Kcp*(1+a))*Tzew) / ((a*Kcw)*(1+a)-a*a*Kcw) ) / ((1+a)*Kcw); % postaæ przed skracaniem (sprawdzenie b³êdu)
%Twew2= ( q2+(Kcw+Kcp)*Tzew) / Kcw;
%Twew3= ( q3+(Kcw+Kcp)*Tzew) / Kcw;

%%%%%%%%%%%%%%%% Wykres Twew(Tzew)
figure(1);
grid on;
hold on;

for i=1:3
    Qg = 500 * i;
    Twew1=( Qg+(Kcw+Kcp)*Tzew) / Kcw  ;

 plot(Tzew,Twew1,'g');

end
plot(TzewN,TwewN,'r*');

%plot(Tzew,TWW,'r:');
%plot(Tzew,Twew2,'g');
%plot(Tzew,Twew3,'r');

xlabel('Tzew');
ylabel('Twew');

%%%%%%%%%%%%%%%% Wykres Twew(Qg)
figure(2);
hold on;
grid on;

Q=1:2000 ;
for j=0:10:20
    Tzew = -30 + j ;
    Twew1=( Q+(Kcw+Kcp)*Tzew) / Kcw  ;
plot(Q,Twew1,'r:');
end


xlabel('q');
ylabel('Twew');
