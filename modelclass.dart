import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LastApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THE FOOL", style: TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,leading: Icon(Icons.close,color: Colors.white,),backgroundColor:Colors.black ,elevation: 0.0,actions: <Widget>[
          Icon(Icons.save_alt,color: Colors.white,),

      ],
      ),

      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 500.0,width: 300.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),color: Colors.orange),
                ),
              ),
              SizedBox(height: 0.0,),

              Padding(
                padding: const EdgeInsets.only(top:0.0,right: 30.0,left: 30.0),
                child: Text("Go forward and do whatever your heart tells you.",style: TextStyle(color:Colors.white,fontSize: 20.0),textAlign: TextAlign.center,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Custom(Icons.mail, "Target set", "Major Acorna"),
                      Custom(Icons.save_alt, "Planet", "Uranus"),
                Custom(Icons.person, "Element", "Air"),
                Custom(Icons.play_circle_filled, "Plkayground","play")

                    ],
                  ),

              ),
          ),

            ])
        ),
      ),
    );
  }
  Widget Custom(IconData icon,String text1,String text2){
    return Container(height: 120.0,width: 200.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Icon(icon,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text1,style: TextStyle(color: Colors.white,),),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(text2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),





          ],

        ),

    );
  }
}


