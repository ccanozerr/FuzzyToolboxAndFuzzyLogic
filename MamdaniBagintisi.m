clc;clear;clear all;
fuzzy
global  mu_xi X mu_X; 

altsinir_futbolcuformu=0; ustsinir_futbolcuformu=150;
altsinir_takimformu=0; ustsinir_takimformu=100;
altsinir_macaetki=0; ustsinir_macaetki=100;


A=altsinir_futbolcuformu:5:ustsinir_futbolcuformu;
S=altsinir_takimformu:5:ustsinir_takimformu;


for i=1:size(A,2)
    for j=1:size(S,2)
        toplam_alan=0;

%numerik girisler

a=A(i); s=S(j);

%Numerik girislerin, girsi cikis uyelik fonk ,Bulanik kumelerin tanimlanmasi

ucgen(altsinir_futbolcuformu,0,0,40,ustsinir_futbolcuformu,a); futbolcuformu_cokkotu_xi=mu_xi;
ucgen(altsinir_futbolcuformu,10,40,70,ustsinir_futbolcuformu,a); futbolcuformu_kotu_xi=mu_xi;
ucgen(altsinir_futbolcuformu,45,75,105,ustsinir_futbolcuformu,a); futbolcuformu_orta_xi=mu_xi;
ucgen(altsinir_futbolcuformu,80,110,135,ustsinir_futbolcuformu,a); futbolcuformu_iyi_xi=mu_xi;
ucgen(altsinir_futbolcuformu,125,150,150,ustsinir_futbolcuformu,a); futbolcuformu_cokiyi_xi=mu_xi;

ucgen(altsinir_takimformu,0,0,20,ustsinir_takimformu,s); takimformu_cokdusuk_xi=mu_xi;
ucgen(altsinir_takimformu,10,25,45,ustsinir_takimformu,s); takimformu_dusuk_xi=mu_xi;
ucgen(altsinir_takimformu,35,50,65,ustsinir_takimformu,s); takimformu_orta_xi=mu_xi;
ucgen(altsinir_takimformu,55,70,90,ustsinir_takimformu,s); takimformu_yuksek_xi=mu_xi;
ucgen(altsinir_takimformu,80,100,100,ustsinir_takimformu,s); takimformu_cokyuksek_xi=mu_xi;

ucgen2(altsinir_macaetki,0,0,20,ustsinir_macaetki); macaetki_cokdusuk_mu=mu_X;
ucgen2(altsinir_macaetki,10,30,50,ustsinir_macaetki); macaetki_dusuk_mu=mu_X;
ucgen2(altsinir_macaetki,30,50,70,ustsinir_macaetki); macaetki_orta_mu=mu_X;
ucgen2(altsinir_macaetki,60,75,90,ustsinir_macaetki); macaetki_yuksek_mu=mu_X;
ucgen2(altsinir_macaetki,85,100,100,ustsinir_macaetki); macaetki_cokyuksek_mu=mu_X;


%Kurallarin tanimlanmasi ve gecerlilik derecelerin hesaplanmasi

mu_sonuc1=min(futbolcuformu_cokkotu_xi,takimformu_cokdusuk_xi)*macaetki_cokdusuk_mu;
mu_sonuc2=min(futbolcuformu_cokkotu_xi,takimformu_dusuk_xi)*macaetki_cokdusuk_mu;
mu_sonuc3=min(futbolcuformu_cokkotu_xi,takimformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc4=min(futbolcuformu_cokkotu_xi,takimformu_yuksek_xi)*macaetki_dusuk_mu;
mu_sonuc5=min(futbolcuformu_cokkotu_xi,takimformu_cokyuksek_xi)*macaetki_orta_mu;
mu_sonuc6=min(futbolcuformu_kotu_xi,takimformu_cokdusuk_xi)*macaetki_cokdusuk_mu;
mu_sonuc7=min(futbolcuformu_kotu_xi,takimformu_dusuk_xi)*macaetki_dusuk_mu;
mu_sonuc8=min(futbolcuformu_kotu_xi,takimformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc9=min(futbolcuformu_kotu_xi,takimformu_yuksek_xi)*macaetki_dusuk_mu;
mu_sonuc10=min(futbolcuformu_kotu_xi,takimformu_cokyuksek_xi)*macaetki_orta_mu;
mu_sonuc11=min(futbolcuformu_orta_xi,takimformu_cokdusuk_xi)*macaetki_dusuk_mu;
mu_sonuc12=min(futbolcuformu_orta_xi,takimformu_dusuk_xi)*macaetki_orta_mu;
mu_sonuc13=min(futbolcuformu_orta_xi,takimformu_orta_xi)*macaetki_orta_mu;
mu_sonuc14=min(futbolcuformu_orta_xi,takimformu_yuksek_xi)*macaetki_orta_mu;
mu_sonuc15=min(futbolcuformu_orta_xi,takimformu_cokyuksek_xi)*macaetki_orta_mu;
mu_sonuc16=min(futbolcuformu_iyi_xi,takimformu_cokdusuk_xi)*macaetki_dusuk_mu;
mu_sonuc17=min(futbolcuformu_iyi_xi,takimformu_dusuk_xi)*macaetki_dusuk_mu;
mu_sonuc18=min(futbolcuformu_iyi_xi,takimformu_orta_xi)*macaetki_dusuk_mu;
mu_sonuc19=min(futbolcuformu_iyi_xi,takimformu_yuksek_xi)*macaetki_orta_mu;
mu_sonuc20=min(futbolcuformu_iyi_xi,takimformu_cokyuksek_xi)*macaetki_yuksek_mu;
mu_sonuc21=min(futbolcuformu_cokiyi_xi,takimformu_cokdusuk_xi)*macaetki_dusuk_mu;
mu_sonuc22=min(futbolcuformu_cokiyi_xi,takimformu_dusuk_xi)*macaetki_dusuk_mu;
mu_sonuc23=min(futbolcuformu_cokiyi_xi,takimformu_orta_xi)*macaetki_orta_mu;
mu_sonuc24=min(futbolcuformu_cokiyi_xi,takimformu_yuksek_xi)*macaetki_yuksek_mu;
mu_sonuc25=min(futbolcuformu_cokiyi_xi,takimformu_cokyuksek_xi)*macaetki_cokyuksek_mu;

%birlestirme operatoru olarak max kullanilmistir 1. ÇIKIÞ
%birlestirme operatoru olarak max kullanilmistir 1. ÇIKIÞ
mu_birlestirme1=max(max(max(max(mu_sonuc1, mu_sonuc2),max(mu_sonuc3,mu_sonuc4)),max(max(mu_sonuc5,mu_sonuc6),max(mu_sonuc7,mu_sonuc8))),max(max(max(mu_sonuc9,mu_sonuc10),max(mu_sonuc11,mu_sonuc12)),max(max(mu_sonuc13, mu_sonuc14),max(mu_sonuc15,mu_sonuc16))));
mu_birlestirme2=max(max(max(mu_sonuc17,mu_sonuc18),max(mu_sonuc19,mu_sonuc20)),max(max(mu_sonuc21,mu_sonuc22),max(mu_sonuc23,mu_sonuc24)));
mu_birlestirme3=mu_sonuc25;
mu_birlestirme=max(max(mu_birlestirme1,mu_birlestirme2),mu_birlestirme3);
toplam_alan=sum(mu_birlestirme); 
if toplam_alan == 0
    'Deneme';
end
z(i,j)=sum(mu_birlestirme.*X)/toplam_alan;
    end %j
end %i

figure(1)
[a,s]=meshgrid(A,S);

%t=length(a);
%r=length(s);
%u=length(z);
%disp("a'nin uzunlugu  ")
%disp(t);
%disp("s'nin uzunlugu  ")
%disp(r);
%disp("z'nin uzunlugu  ")
%disp(u);

surf(a,s,z')%X ve Y ye göre z'leri çizer

xlabel('OyuncuFormu');
ylabel('TAkimFormu');
zlabel('MacaEtki');


