clc;clear;clear all;
%fuzzy
global X mu_xi  mu_X; 
altsinir_futbolcuformu=0; ustsinir_futbolcuformu=150;
altsinir_takimformu=0; ustsinir_takimformu=100;
altsinir_rakibinformu=0; ustsinir_rakibinformu=50;

altsinir_macaetki=0; ustsinir_macaetki=100;

%nümerik giriþler
futbolcuformu_xi=100; takimformu_xi=90; rakibinformu_xi=50;

%bulanýk kümelerin oluþturulmasý
%futbolcu formu
ucgen(altsinir_futbolcuformu,0,0,40,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_cokkotu_xi=mu_xi;
ucgen(altsinir_futbolcuformu,10,40,70,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_kotu_xi=mu_xi;
ucgen(altsinir_futbolcuformu,45,75,105,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_orta_xi=mu_xi;
ucgen(altsinir_futbolcuformu,80,110,135,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_iyi_xi=mu_xi;
ucgen(altsinir_futbolcuformu,125,150,150,ustsinir_futbolcuformu,futbolcuformu_xi); futbolcuformu_cokiyi_xi=mu_xi;
%takým formu
ucgen(altsinir_takimformu,0,0,20,ustsinir_takimformu,takimformu_xi); takimformu_cokdusuk_xi=mu_xi;
ucgen(altsinir_takimformu,10,25,45,ustsinir_takimformu,takimformu_xi); takimformu_dusuk_xi=mu_xi;
ucgen(altsinir_takimformu,35,50,65,ustsinir_takimformu,takimformu_xi); takimformu_orta_xi=mu_xi;
ucgen(altsinir_takimformu,55,70,90,ustsinir_takimformu,takimformu_xi); takimformu_yuksek_xi=mu_xi;
ucgen(altsinir_takimformu,80,100,100,ustsinir_takimformu,takimformu_xi); takimformu_cokyuksek_xi=mu_xi;
%rakip formu
ucgen(altsinir_rakibinformu,0,0,20,ustsinir_rakibinformu,rakibinformu_xi); rakipformu_kotu_xi=mu_xi;
ucgen(altsinir_rakibinformu,15,27.5,40,ustsinir_rakibinformu,rakibinformu_xi); rakipformu_orta_xi=mu_xi;
ucgen(altsinir_rakibinformu,35,50,50,ustsinir_rakibinformu,rakibinformu_xi); rakipformu_iyi_xi=mu_xi;
%maça etki
ucgen2(altsinir_macaetki,0,0,20,ustsinir_macaetki); macaetki_cokdusuk_mu=mu_X;
ucgen2(altsinir_macaetki,10,30,50,ustsinir_macaetki); macaetki_dusuk_mu=mu_X;
ucgen2(altsinir_macaetki,30,50,70,ustsinir_macaetki); macaetki_orta_mu=mu_X;
ucgen2(altsinir_macaetki,60,75,90,ustsinir_macaetki); macaetki_yuksek_mu=mu_X;
ucgen2(altsinir_macaetki,85,100,100,ustsinir_macaetki); macaetki_cokyuksek_mu=mu_X;
%kurallarýn tanýmlanmasý
mu_sonuc1=min(min(futbolcuformu_cokkotu_xi,takimformu_cokdusuk_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc2=min(min(futbolcuformu_cokkotu_xi,takimformu_cokdusuk_xi),rakipformu_orta_xi)*macaetki_cokdusuk_mu;
mu_sonuc3=min(min(futbolcuformu_cokkotu_xi,takimformu_cokdusuk_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc4=min(min(futbolcuformu_cokkotu_xi,takimformu_dusuk_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc5=min(min(futbolcuformu_cokkotu_xi,takimformu_dusuk_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc6=min(min(futbolcuformu_cokkotu_xi,takimformu_dusuk_xi),rakipformu_iyi_xi)*macaetki_cokdusuk_mu;
mu_sonuc7=min(min(futbolcuformu_cokkotu_xi,takimformu_orta_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc8=min(min(futbolcuformu_cokkotu_xi,takimformu_orta_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc9=min(min(futbolcuformu_cokkotu_xi,takimformu_orta_xi),rakipformu_iyi_xi)*macaetki_cokdusuk_mu;
mu_sonuc10=min(min(futbolcuformu_cokkotu_xi,takimformu_yuksek_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc11=min(min(futbolcuformu_cokkotu_xi,takimformu_yuksek_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc12=min(min(futbolcuformu_cokkotu_xi,takimformu_yuksek_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc13=min(min(futbolcuformu_cokkotu_xi,takimformu_cokyuksek_xi),rakipformu_kotu_xi)*macaetki_orta_mu;
mu_sonuc14=min(min(futbolcuformu_cokkotu_xi,takimformu_cokyuksek_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc15=min(min(futbolcuformu_cokkotu_xi,takimformu_cokyuksek_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc16=min(min(futbolcuformu_kotu_xi,takimformu_cokdusuk_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc17=min(min(futbolcuformu_kotu_xi,takimformu_cokdusuk_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc18=min(min(futbolcuformu_kotu_xi,takimformu_cokdusuk_xi),rakipformu_iyi_xi)*macaetki_cokdusuk_mu;
mu_sonuc19=min(min(futbolcuformu_kotu_xi,takimformu_dusuk_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc20=min(min(futbolcuformu_kotu_xi,takimformu_dusuk_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc21=min(min(futbolcuformu_kotu_xi,takimformu_dusuk_xi),rakipformu_iyi_xi)*macaetki_cokdusuk_mu;
mu_sonuc22=min(min(futbolcuformu_kotu_xi,takimformu_orta_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc23=min(min(futbolcuformu_kotu_xi,takimformu_orta_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc24=min(min(futbolcuformu_kotu_xi,takimformu_orta_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc25=min(min(futbolcuformu_kotu_xi,takimformu_yuksek_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc26=min(min(futbolcuformu_kotu_xi,takimformu_yuksek_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc27=min(min(futbolcuformu_kotu_xi,takimformu_yuksek_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc28=min(min(futbolcuformu_kotu_xi,takimformu_cokyuksek_xi),rakipformu_kotu_xi)*macaetki_orta_mu;
mu_sonuc29=min(min(futbolcuformu_kotu_xi,takimformu_cokyuksek_xi),rakipformu_orta_xi)*macaetki_orta_mu;
mu_sonuc30=min(min(futbolcuformu_kotu_xi,takimformu_cokyuksek_xi),rakipformu_iyi_xi)*macaetki_orta_mu;
mu_sonuc31=min(min(futbolcuformu_orta_xi,takimformu_cokdusuk_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc32=min(min(futbolcuformu_orta_xi,takimformu_cokdusuk_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc33=min(min(futbolcuformu_orta_xi,takimformu_cokdusuk_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc34=min(min(futbolcuformu_orta_xi,takimformu_dusuk_xi),rakipformu_kotu_xi)*macaetki_dusuk_mu;
mu_sonuc35=min(min(futbolcuformu_orta_xi,takimformu_dusuk_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc36=min(min(futbolcuformu_orta_xi,takimformu_dusuk_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc37=min(min(futbolcuformu_orta_xi,takimformu_orta_xi),rakipformu_kotu_xi)*macaetki_orta_mu;
mu_sonuc38=min(min(futbolcuformu_orta_xi,takimformu_orta_xi),rakipformu_orta_xi)*macaetki_orta_mu;
mu_sonuc39=min(min(futbolcuformu_orta_xi,takimformu_orta_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc40=min(min(futbolcuformu_orta_xi,takimformu_yuksek_xi),rakipformu_kotu_xi)*macaetki_yuksek_mu;
mu_sonuc41=min(min(futbolcuformu_orta_xi,takimformu_yuksek_xi),rakipformu_orta_xi)*macaetki_orta_mu;
mu_sonuc42=min(min(futbolcuformu_orta_xi,takimformu_yuksek_xi),rakipformu_iyi_xi)*macaetki_orta_mu;
mu_sonuc43=min(min(futbolcuformu_orta_xi,takimformu_cokyuksek_xi),rakipformu_kotu_xi)*macaetki_yuksek_mu;
mu_sonuc44=min(min(futbolcuformu_orta_xi,takimformu_cokyuksek_xi),rakipformu_orta_xi)*macaetki_orta_mu;
mu_sonuc45=min(min(futbolcuformu_orta_xi,takimformu_cokyuksek_xi),rakipformu_iyi_xi)*macaetki_orta_mu;
mu_sonuc46=min(min(futbolcuformu_iyi_xi,takimformu_cokdusuk_xi),rakipformu_kotu_xi)*macaetki_orta_mu;
mu_sonuc47=min(min(futbolcuformu_iyi_xi,takimformu_cokdusuk_xi),rakipformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc48=min(min(futbolcuformu_iyi_xi,takimformu_cokdusuk_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc49=min(min(futbolcuformu_iyi_xi,takimformu_dusuk_xi),rakipformu_kotu_xi)*macaetki_orta_mu;
mu_sonuc50=min(min(futbolcuformu_iyi_xi,takimformu_dusuk_xi),rakipformu_orta_xi)*macaetki_orta_mu;
mu_sonuc51=min(min(futbolcuformu_iyi_xi,takimformu_dusuk_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc52=min(min(futbolcuformu_iyi_xi,takimformu_orta_xi),rakipformu_kotu_xi)*macaetki_orta_mu;
mu_sonuc53=min(min(futbolcuformu_iyi_xi,takimformu_orta_xi),rakipformu_orta_xi)*macaetki_orta_mu;
mu_sonuc54=min(min(futbolcuformu_iyi_xi,takimformu_orta_xi),rakipformu_iyi_xi)*macaetki_orta_mu;
mu_sonuc55=min(min(futbolcuformu_iyi_xi,takimformu_yuksek_xi),rakipformu_kotu_xi)*macaetki_yuksek_mu;
mu_sonuc56=min(min(futbolcuformu_iyi_xi,takimformu_yuksek_xi),rakipformu_orta_xi)*macaetki_yuksek_mu;
mu_sonuc57=min(min(futbolcuformu_iyi_xi,takimformu_yuksek_xi),rakipformu_iyi_xi)*macaetki_orta_mu;
mu_sonuc58=min(min(futbolcuformu_iyi_xi,takimformu_cokyuksek_xi),rakipformu_kotu_xi)*macaetki_yuksek_mu;
mu_sonuc59=min(min(futbolcuformu_iyi_xi,takimformu_cokyuksek_xi),rakipformu_orta_xi)*macaetki_yuksek_mu;
mu_sonuc60=min(min(futbolcuformu_iyi_xi,takimformu_cokyuksek_xi),rakipformu_iyi_xi)*macaetki_yuksek_mu;
mu_sonuc61=min(min(futbolcuformu_cokiyi_xi,takimformu_cokdusuk_xi),rakipformu_kotu_xi)*macaetki_orta_mu;
mu_sonuc62=min(min(futbolcuformu_cokiyi_xi,takimformu_cokdusuk_xi),rakipformu_orta_xi)*macaetki_orta_mu;
mu_sonuc63=min(min(futbolcuformu_cokiyi_xi,takimformu_cokdusuk_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc64=min(min(futbolcuformu_cokiyi_xi,takimformu_dusuk_xi),rakipformu_kotu_xi)*macaetki_orta_mu;
mu_sonuc65=min(min(futbolcuformu_cokiyi_xi,takimformu_dusuk_xi),rakipformu_orta_xi)*macaetki_orta_mu;
mu_sonuc66=min(min(futbolcuformu_cokiyi_xi,takimformu_dusuk_xi),rakipformu_iyi_xi)*macaetki_dusuk_mu;
mu_sonuc67=min(min(futbolcuformu_cokiyi_xi,takimformu_orta_xi),rakipformu_kotu_xi)*macaetki_yuksek_mu;
mu_sonuc68=min(min(futbolcuformu_cokiyi_xi,takimformu_orta_xi),rakipformu_orta_xi)*macaetki_yuksek_mu;
mu_sonuc69=min(min(futbolcuformu_cokiyi_xi,takimformu_orta_xi),rakipformu_iyi_xi)*macaetki_orta_mu;
mu_sonuc70=min(min(futbolcuformu_cokiyi_xi,takimformu_yuksek_xi),rakipformu_kotu_xi)*macaetki_cokyuksek_mu;
mu_sonuc71=min(min(futbolcuformu_cokiyi_xi,takimformu_yuksek_xi),rakipformu_orta_xi)*macaetki_yuksek_mu;
mu_sonuc72=min(min(futbolcuformu_cokiyi_xi,takimformu_yuksek_xi),rakipformu_iyi_xi)*macaetki_yuksek_mu;
mu_sonuc73=min(min(futbolcuformu_cokiyi_xi,takimformu_cokyuksek_xi),rakipformu_kotu_xi)*macaetki_cokyuksek_mu;
mu_sonuc74=min(min(futbolcuformu_cokiyi_xi,takimformu_cokyuksek_xi),rakipformu_orta_xi)*macaetki_cokyuksek_mu;
mu_sonuc75=min(min(futbolcuformu_cokiyi_xi,takimformu_cokyuksek_xi),rakipformu_iyi_xi)*macaetki_cokyuksek_mu;

%birleþtirme
mu_birlestirme1=max(max(max(max(max(mu_sonuc1, mu_sonuc2),max(mu_sonuc3,mu_sonuc4)),max(max(mu_sonuc5,mu_sonuc6),max(mu_sonuc7,mu_sonuc8))),max(max(max(mu_sonuc9,mu_sonuc10),max(mu_sonuc11,mu_sonuc12)),max(max(mu_sonuc13, mu_sonuc14),max(mu_sonuc15,mu_sonuc16)))),max(max(max(mu_sonuc17,mu_sonuc18),max(mu_sonuc19,mu_sonuc20)),max(mu_sonuc21,mu_sonuc22)));
mu_birlestirme2=max(max(max(max(max(mu_sonuc23, mu_sonuc24),max(mu_sonuc25,mu_sonuc26)),max(max(mu_sonuc27,mu_sonuc28),max(mu_sonuc29,mu_sonuc30))),max(max(max(mu_sonuc31,mu_sonuc32),max(mu_sonuc33,mu_sonuc34)),max(max(mu_sonuc35, mu_sonuc36),max(mu_sonuc37,mu_sonuc38)))),max(max(max(mu_sonuc39,mu_sonuc40),max(mu_sonuc41,mu_sonuc42)),max(mu_sonuc43,mu_sonuc44)));
mu_birlestirme3=max(max(max(max(max(mu_sonuc45, mu_sonuc50),max(mu_sonuc47,mu_sonuc48)),max(max(mu_sonuc49,mu_sonuc50),max(mu_sonuc51,mu_sonuc52))),max(max(max(mu_sonuc53,mu_sonuc54),max(mu_sonuc55,mu_sonuc56)),max(max(mu_sonuc57, mu_sonuc58),max(mu_sonuc59,mu_sonuc60)))),max(max(max(mu_sonuc61,mu_sonuc62),max(mu_sonuc63,mu_sonuc64)),max(mu_sonuc65,mu_sonuc66)));
mu_birlestirme4=max(max(max(max(mu_sonuc67,mu_sonuc68),max(mu_sonuc69,mu_sonuc70)),max(max(mu_sonuc71,mu_sonuc72),max(mu_sonuc73,mu_sonuc74))),mu_sonuc75);
mu_birlestirme=max(max(mu_birlestirme1,mu_birlestirme2),max(mu_birlestirme3,mu_birlestirme4));

length(mu_birlestirme);
length(X);
X=0:0.001:100;
figure(1);
plot(X,mu_birlestirme);

%durulastirma operatoru olarak agirlik merkezi kullanilmistir
toplam_alan=sum(mu_birlestirme); 
if toplam_alan==0
    'Agirlk merkezi yonteminde toplam alan 0 dir';
end
z=sum(mu_birlestirme.*X)/toplam_alan;
h=[z z z z z z z z z z z];

line(h,0:0.1:1,'Color','blue','LineStyle','--'); %durulaþtýrma sonucu
xlabel([' SONUC z= ', num2str(z)]);