rt = csvread('ntc.csv');
t = rt(:,1);
r = rt(:,2);
figure(1)
subplot(2,1,1);plot(r,t);
ad = 1024*(r./(r+10));
subplot(2,1,2);;plot(ad,t);
p = polyfit(ad, t, 10);
ad2 = 0:1023;
t2 = round(polyval(p, ad2), 1);
hold on, plot(ad2, t2, 'r'); 
dlmwrite('data.dlm', t2*10, ',');
