import 'package:bloc_kullanimi/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Anasayfa extends StatelessWidget {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();
  int sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Block Kullanımı"),),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0 ,right: 50.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubit,int>(//dinleme veya okuma işlemleri
                  builder: (context,gelenSonuc){
                    return Text(gelenSonuc.toString(),style: const TextStyle(fontSize: 50),);
                  }
              ), // okuma işlemi
              TextField(controller: tfSayi1,decoration: const InputDecoration(hintText: "Sayı 1"),),
              TextField(controller: tfSayi2,decoration: const InputDecoration(hintText: "Sayı 2"),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    context.read<AnasayfaCubit>().topla(tfSayi1.text, tfSayi2.text); // hangi cubiti çalıştırcağımı belirtip parametrelerini alıyorum.
                  }, child: const Text("Toplama")),
                  ElevatedButton(onPressed: (){
                   context.read<AnasayfaCubit>().carp(tfSayi1.text, tfSayi2.text);
                  }, child: const Text("Çarpma")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
