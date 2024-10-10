import 'dart:io' ;

void main(){
  print("Adınız :");
  String? ad = stdin.readLineSync();
  
  print("SoyaAdınız :");
  String? soyad = stdin.readLineSync();
  ogrenci student = new ogrenci("$ad", "$soyad");
  while(true){
  print("Ne yapmak istersiniz.(notekle,notgoruntule,orthesapla,cikis)");
  String? islem = stdin.readLineSync()?.toLowerCase();
  if(islem == "notekle"){
  print("Kaç not girmek istersiniz.");
  
  String? sayi = stdin.readLineSync();
  int? sayi1 = int.parse(sayi ?? '0');
  
  print("Notları sırayla giriniz.");
  
  for (var i = 0; i < sayi1; i++) {
  String? not = stdin.readLineSync();
  int? not1 = int.parse(not ?? '0');
  notekle(student, not1);
}
} else if(islem == "notgoruntule"){
print("İşte notlarınız : ");
print(student.notlar);
} else if(islem == "orthesapla"){
  orthesapla(student);
} else if(islem == "cikis"){
    break;
}
  else {
  print("Hatalı bir kullanım");
}
}
}
class ogrenci {
  String ad;
  String soyad;
  List <int> notlar = [];
  ogrenci(this.ad,this.soyad,);
}

void notekle(ogrenci student,int not){
    student.notlar.add(not);
  }
void orthesapla(ogrenci student){
int n = student.notlar.length;
double toplam = 0;
double sonuc = 0;
for (var i = 0; i < n; i++) {
toplam = student.notlar[i] + toplam;
}
if (n == 0) {
  print ("Not bulunmamakta");
  return;
}
sonuc = toplam / n;
print("Not ortalamanız.");
print(sonuc);
  
 
}