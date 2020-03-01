clear all;

qgN=1000;
TzewN=-20;
TwewN=20;
TpN=10;

%wyliczanie wspolczynnikow strat
wq=[qgN;0];
mT=[1.25*TwewN-TzewN-0.25*TpN,0;0.25*TwewN-0.25*TpN,-TpN+TzewN];
wk=inv(mT)*wq;
kcw=wk(1);
kcp=wk(2);

figure;
grid on;
hold on;

linie=['r-','g:','b+'];
Q=500:500:1500;
Tzew=-20:40;

for i=(1:length(Q));
    
    Twew=(5*Q(i)+5*kcw*Tzew-kcp*Tzew)/(6.5*kcw)+2.5;
    plot(Tzew,Twew,linie(i))
    
end
plot(TzewN,TwewN,'o')
ylabel('Twew');
xlabel('Tzew');
title('Rodzina charakterystyk dla Twew(Tzew) i parametru Q');
legend('Q=500','Q=1000','Q=1500','punkt nominalny','location','south');