import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_shoppingcart/mycontroller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 67, 150, 217), Color.fromARGB(255, 150, 197, 236)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Total: ',style: TextStyle(fontSize: 30),),
              SizedBox(height: 5,),
              Obx(() => Text('${c.sum.toString()}',style: TextStyle(fontSize: 30))),
              SizedBox(height: 20,),
              Container(
                height: 70,
                width: 160,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                  onPressed: () => Get.back(),
                  child: Text('Go back', style: TextStyle(fontSize: 30),),
                  
                ),
              ),
            ],
          ),
        )
        
      ),
    );
  }
}