pkg load statistics

x = normrnd(175,7,1000,1);
[nn,xx] = hist(x,20);

figure (1)
bar(xx,nn)
xlabel('heights')
ylabel('count')
grid on

rng = 120:220;
pdf_sigma_6 = normpdf(rng, 175, 6);
pdf_sigma_7 = normpdf(rng, 175, 7);
pdf_sigma_8 = normpdf(rng, 175, 8);

figure (2)
plot(rng, pdf_sigma_6);
hold on;
plot(rng, pdf_sigma_7);
plot(rng, pdf_sigma_8);
legend('\sigma = 6', '\sigma = 7', '\sigma = 8');
xlabel('Height');
ylabel('Pdf');
grid on;
hold off;

count45=0;
count50=0;
count55=0;

for i=1:1000
  %select 150 random
  indices = randi(1000, 150, 1);
  heights = x(indices);
  probability = mean(170<heights & heights<180);
  if probability>=0.45
    count45++;
  endif
  if probability>=0.50
    count50++;
  endif
  if probability>=0.55
    count55++;
  endif
end
atleast45 = count45/1000
atleast50 = count50/1000
atleast55 = count55/1000









