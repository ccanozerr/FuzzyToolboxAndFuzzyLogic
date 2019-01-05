clc;clear;clear all;
global mu_xi;

altsinir_futbolcuformu=0; ustsinir_futbolcuformu=150;
altsinir_rakibinformu=0; ustsinir_rakibinformu=50;

%Giriþler
futbolcuformu_xi=95; rakibinformu_xi=20; 

a1 = 0;            b1 = 0.12;          c1 = 0.24;
a2 = 0.20;         b2 = 0.40;          c2 = 0.59;
a3 = 0.50;         b3 = 0.63;          c3 = 0.70;
a4 = 0.63;         b4 = 0.79;          c4 = 1;
   
%bulanýk kümelerin oluþturulmasý
%futbolcu formu
ucgen(altsinir_futbolcuformu,0,0,40,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_cokkotu_xi=mu_xi;
ucgen(altsinir_futbolcuformu,10,40,70,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_kotu_xi=mu_xi;
ucgen(altsinir_futbolcuformu,45,75,105,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_orta_xi=mu_xi;
ucgen(altsinir_futbolcuformu,80,110,135,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_iyi_xi=mu_xi;
ucgen(altsinir_futbolcuformu,125,150,150,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_cokiyi_xi=mu_xi;
%rakip formu
ucgen(altsinir_rakibinformu,0,0,20,ustsinir_rakibinformu,rakibinformu_xi); rakipformu_kotu_xi=mu_xi;
ucgen(altsinir_rakibinformu,15,27.5,40,ustsinir_rakibinformu,rakibinformu_xi); rakipformu_orta_xi=mu_xi;
ucgen(altsinir_rakibinformu,35,50,50,ustsinir_rakibinformu,rakibinformu_xi); rakipformu_iyi_xi=mu_xi;


%  Cýkýþ Üyelik Fonksiyonu 
mf1 = a1*futbolcuformu_xi + b1*rakibinformu_xi + c1;
mf2 = a2*futbolcuformu_xi + b2*rakibinformu_xi + c2;
mf3 = a3*futbolcuformu_xi + b3*rakibinformu_xi + c3;
mf4 = a4*futbolcuformu_xi + b4*rakibinformu_xi + c4;


%KURAL TABANI 
%VE Baðlacý olarak min operatörü kullanýlmýþtýr
w1 = min(futbolcuformu_cokkotu_xi,rakipformu_kotu_xi);
w2 = min(futbolcuformu_cokkotu_xi,rakipformu_orta_xi);
w3 = min(futbolcuformu_cokkotu_xi,rakipformu_iyi_xi);

w4 = min(futbolcuformu_kotu_xi,rakipformu_kotu_xi);
w5 = min(futbolcuformu_kotu_xi,rakipformu_orta_xi);
w6 = min(futbolcuformu_kotu_xi,rakipformu_iyi_xi);

w7= min(futbolcuformu_orta_xi,rakipformu_kotu_xi);
w8= min(futbolcuformu_orta_xi,rakipformu_orta_xi);
w9= min(futbolcuformu_orta_xi,rakipformu_iyi_xi);

w10= min(futbolcuformu_iyi_xi,rakipformu_kotu_xi);
w11= min(futbolcuformu_iyi_xi,rakipformu_orta_xi);
w12= min(futbolcuformu_iyi_xi,rakipformu_iyi_xi);

w13= min(futbolcuformu_cokiyi_xi,rakipformu_kotu_xi);
w14= min(futbolcuformu_cokiyi_xi,rakipformu_orta_xi);
w15= min(futbolcuformu_cokiyi_xi,rakipformu_iyi_xi);

%Sonuçlarýn aðýrlýklý Toplamý Eþleþtirme Toplamý
SAT = w1*mf1 + w2*mf1 + w3*mf1 + w4*mf1 + w5*mf1 + w6*mf1 + w7*mf3 + w8*mf2 + w9*mf2 + w10*mf3 + w11*mf3 + w12*mf2 + w13*mf4 + w14*mf3 + w15*mf1; 


%DURULAÞTIRMA operatörü olarak aðýrlýk merkezi kullanýlýyor
toplam_agirlik = w1 + w2 + w3 + w4 + w5 + w6 + w7 + w8 + w9+ w10+ w11+ w12+ w13+ w14+ w15;


z = SAT/toplam_agirlik;
h=[z z z z z z z z z z z];

line(h,0:0.1:1,'Color','green','LineStyle','--'); %durulaþtýrma sonucu

xlabel([' SONUC= z= ', num2str(z)]);

