
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var pens = 0.obs;
  var books = 0.obs;
  var pencils = 0.obs;
  int get sum=> books.value + pens.value + pencils.value;

  plusbooks(){
    books.value++;
  }
  minusbooks(){
    if(books.value <= 0){
      Get.snackbar(
        'Too low', 'Can not have less than zero books',
        icon: const Icon(Icons.clear),barBlur: 20,isDismissible: true,duration: const Duration(seconds: 3)
      );
    } else{
      books.value--;
    }
  }

  pluspens(){
    pens.value++;
  }
  minuspens(){
    if(books.value <= 0){
      Get.snackbar(
        'Too low', 'Can not have less than zero pens',
        icon: const Icon(Icons.clear),barBlur: 20,isDismissible: true,duration: const Duration(seconds: 3)
      );
    } else{
      pens.value--;
    }
  }

  pluspencils(){
    pencils.value++;
  }
  minuspencils(){
    if(books.value <= 0){
      Get.snackbar(
        'Too low', 'Can not have less than zero pencils',
        icon: const Icon(Icons.clear),barBlur: 20,isDismissible: true,duration: const Duration(seconds: 3)
      );
    } else{
      pencils.value--;
    }
  }

}