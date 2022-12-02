
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_shoppingcart/mycontroller.dart';
import 'package:statemanagement_shoppingcart/totalpage.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1,centerTitle: true, title: Text('Shopping items cart'),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 67, 150, 217), Color.fromARGB(255, 150, 197, 236)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        padding: const EdgeInsets.all(30),
        //color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          
          //books

          Row(children: [
            const Text('Books', style: TextStyle(
              fontSize:30,
              color: Colors.black54
            ),),
            Expanded(child: Container()),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.redAccent
              ),
              child: IconButton(
                icon: Icon(Icons.add, color: Colors.white,),
                onPressed: ()=> c.plusbooks(),
              ),
            ),
            const SizedBox(width: 20),
            Obx(()=>Text("${c.books.toString()}",style: TextStyle(fontSize: 30),)),
            const SizedBox(width: 20),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.redAccent
              ),
              child: IconButton(
                icon: Icon(Icons.remove, color: Colors.white,),
                onPressed: ()=> c.minusbooks(),
              ),
            ),
          ],),
          SizedBox(height: 20,),    
          // pens
    
          Row(children: [
            const Text('Pens', style: TextStyle(
              fontSize:30,
              color: Colors.black54 
            ),),
            Expanded(child: Container()),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.redAccent
              ),
              child: IconButton(
                icon: Icon(Icons.add, color: Colors.white,),
                onPressed: ()=> c.pluspens(),
              ),
            ),
            const SizedBox(width: 20),
            Obx(()=>Text("${c.pens.toString()}",style: TextStyle(fontSize: 30),)),
            const SizedBox(width: 20),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.redAccent
              ),
              child: IconButton(
                icon: Icon(Icons.remove, color: Colors.white,),
                onPressed: ()=> c.minuspens(),
              ),
            ),
          ],),
          SizedBox(height: 20,),  
          // pencils
    
          Row(children: [
            const Text('Pencils', style: TextStyle(
              fontSize:30,
              color: Colors.black54 
            ),),
            Expanded(child: Container()),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.redAccent
              ),
              child: IconButton(
                icon: Icon(Icons.add, color: Colors.white,),
                onPressed: ()=> c.pluspencils(),
              ),
            ),
            const SizedBox(width: 20),
            Obx(()=>Text("${c.pencils.toString()}",style: TextStyle(fontSize: 30),)),
            const SizedBox(width: 20),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.redAccent
              ),
              child: IconButton(
                icon: Icon(Icons.remove, color: Colors.white,),
                onPressed: ()=> c.minuspencils(),
              ),
            ),
          ],),
          SizedBox(height: 40,),
          Row(
            

            children: [
              Expanded(child: Container(),),
              Container(
                height: 70,
                width: 160,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                  onPressed: () => Get.to(TotalPage()),
                  child: Text('Total', style: TextStyle(fontSize: 30),),
                  
                ),
              ),
            ],
          )
          

        
        ],),
      ),
    );
  }
}