import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller';



class mycart extends StatelessWidget {
  mycart({Key? key}) : super(key: key);

  final MyController c = Get.put(MyController()); //controller var c we made to use getx properties. using c we will use the variable defined in the my_controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App with Getx"),backgroundColor:Colors.deepPurple),
      body: Container(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Row(
              children: [
                Container(width:MediaQuery.of(context).size.width*.30 ,
                height:MediaQuery.of(context).size.width*.30 ,
                color: Colors.deepPurple,
                alignment: Alignment.center,
                child: Text('Books',style: TextStyle(color: Colors.white),),),
                SizedBox(width: MediaQuery.of(context).size.width*.20 ),
                IconButton(onPressed: () => c.increment(), icon: Icon(Icons.add)),
                SizedBox(
                  width: 30,
                ),
                Obx(() => Text(c.books.toString())),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () => c.decrement(),
                    icon: Icon(Icons.arrow_drop_down_sharp)),
              ],
            ),
            SizedBox(height:MediaQuery.of(context).size.height*.05,),
            Row(
              children: [
                Container(width:MediaQuery.of(context).size.width*.30 ,
                  height:MediaQuery.of(context).size.width*.30 ,
                  color: Colors.deepPurple,
                  alignment: Alignment.center,
                  child: Text('Pen',style: TextStyle(color: Colors.white),),),
                SizedBox(width: MediaQuery.of(context).size.width*.20 ),
                IconButton(onPressed: () => c.incrementl(), icon: Icon(Icons.add)),
                SizedBox(
                  width: 30,
                ),
                Obx(() => Text(c.looks.toString())),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () => c.decrementl(),
                    icon: Icon(Icons.arrow_drop_down_sharp)),
              ],
            ),
            Divider(),
            Row(
              children: [
                SizedBox(width:MediaQuery.of(context).size.width*.30 ),
                Text( style: TextStyle(fontSize: 40,color: Colors.deepPurple),softWrap: true,
                  "Total",),
                SizedBox(width:MediaQuery.of(context).size.width*.10),
                Obx(() => Text(style: TextStyle(fontSize: 40,color: Colors.deepPurple),c.sum.toString())),
              ],
            ),




          ],
        ),
      ),
    );
  }
}
