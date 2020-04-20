

import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart';
import 'package:flutter/material.dart';
class WheelExample extends StatelessWidget {


  Widget _buildItem() {
    return

      ClipRRect(borderRadius: BorderRadius.only(bottomRight:Radius.circular(50.0),bottomLeft: Radius.circular(50.0),topRight: Radius.circular(50.0),topLeft: Radius.circular(50.0)),
        child: Stack(alignment: Alignment.topCenter,

          children: <Widget>[


            Align( alignment: Alignment(-0.9, 0.8),
              child: Container(
                height: 100.0,width: 50.0,
                color: Colors.lime,
              ),
            ),

            Align( alignment: Alignment(-0.6, 0.7),
              child: Container(
                height: 100.0,width: 50.0,
                color: Colors.lime,
              ),
            ),


            Align(alignment: Alignment(-0.3,0.6),
              child: Container(
                height: 100.0,width: 50.0,
                color: Colors.yellow,
              ),
            ),


            Align( alignment: Alignment(0.0, 0.5),
              child: Container(
                height: 100.0,width: 50.0,
                color: Colors.lime,
              ),
            ),

            Align(alignment:Alignment(0.3,0.6),
              child: Container(
                height: 100.0,width: 50.0,
                color: Colors.purple,
              ),
            ),
            Align( alignment: Alignment(0.6, 0.7),
              child: Container(
                height: 100.0,width: 50.0,
                color: Colors.lime,
              ),
            ),

            Align( alignment: Alignment(0.9, 0.8),
              child: Container(
                height: 100.0,width: 50.0,
                color: Colors.lime,
              ),
            ),



          ],
        ),
      );




  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wheel'),
      ),
      body: SafeArea(



        child: Column(
          children: <Widget>[

            Container(
              height:MediaQuery.of(context).size.height/1.75,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text("Sunday, OCT 23",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                  SizedBox(height: 10.0,),
                  Text("Daily Fortune",style: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 90.0,),
                  Text("Tap to pick your card",style: TextStyle(fontSize: 12.0,color: Colors.white),),
                  SizedBox(height: 15.0,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Container(
                        height: 3.0,width: 80.0,color: Colors.white
                        ,
                      ),SizedBox(width: 30.0,),
                      ClipPath(
                        child: Container(
                          height: 50.0,width: 50.0,color: Colors.lightGreen,


                        ),
                        clipper: TriangleClipper(),
                      ),
                      SizedBox(width: 30.0,),

                      Container(
                        height: 3.0,width: 80.0,color: Colors.white
                        ,
                      ),

                    ],
                  )
                ],
              )

            ),




            Expanded(
              child: Container(color: Colors.grey,
                child: CircleListScrollView(
                  physics:CircleFixedExtentScrollPhysics(),
                  axis: Axis.horizontal,
                  itemExtent: 300,
                  children: <Widget>[
                    _buildItem(),
                    _buildItem(),
                    _buildItem(),
                    _buildItem(),

                  ],
                  radius: MediaQuery.of(context).size.width*0.3,


                ),
              ),
            ),



          ],
        ),
        // height: 260,
        // width: 160,




      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path>{
  Path getClip(Size size){
    final path= Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width/2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
