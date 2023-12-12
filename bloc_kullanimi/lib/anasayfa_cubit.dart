import 'package:bloc_kullanimi/matematik_Repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int>{
  AnasayfaCubit():super(0); // var sayıla değer bu sayfa çalıştığı zaman  int değerin varsayılan değeri 0 olur
  var mrepo = MatematikRepository(); // repoya erişim


  void topla(String alinanSayi1 , String alinanSayi2){ //cubit türünde fonksiyonlarda return olmaz
    int toplam = mrepo.topla(alinanSayi1, alinanSayi2);
    emit(toplam); // tetikleme veya veri gönderme
  }

  void carp(String alinanSayi1 , String alinanSayi2){
    int carpma = mrepo.carp(alinanSayi1, alinanSayi2);
    emit(carpma); // tetikleme veya veri gönderme
  }
}