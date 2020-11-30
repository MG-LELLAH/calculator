import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
   State<StatefulWidget> createState() {
    return _Calculator();
  }
}

class _Calculator extends State<MyApp>{
  double first =0;
  double second =0;
  double result=0;
  String show ="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: Scaffold(
        appBar:AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          Icon(Icons.access_time, color: Colors.white54,),
          Text('DSC'),
          Icon(Icons.undo, color: Colors.white54,)
              ],
            ),
          backgroundColor: Colors.black,
        ) ,
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '$show',
                        style: TextStyle(
                          color: Colors.white
                          ),
                        )
                      ),
                      SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '$result',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          ),
                        )
                      )
                  ],
                )
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white10,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                           child: Row(
                          children: [
                            FlatButton(onPressed: (){
                              setState(() {
                                result = 0;
                                show ="";
                              });
                            }, child: Text('C', style: TextStyle(
                              color: Colors.green,
                              fontSize: 20
                            ),)),
                            FlatButton(onPressed: (){}, child: Text('+/-', style: TextStyle(
                              color: Colors.green,
                              fontSize: 20
                            ),)),
                            FlatButton(onPressed: (){}, child: Text('%', style: TextStyle(
                              color: Colors.green,
                              fontSize: 20
                            ),)),
                            FlatButton
                            (onPressed: (){
                             setState(() {
                                show = show +" ÷ ";
                             });
                            },
                            minWidth: 1,
                            child: Text('÷', 
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),)
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "7";
                                });
                              },
                              child: Text('7', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "8";
                                });
                              },
                              child: Text('8', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "9";
                                });
                              },
                              child: Text('9', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + " x ";
                                });
                              },
                              minWidth: 1,
                              child: Text('X', style: TextStyle(
                              color: Colors.red,
                              fontSize: 20
                            ),)),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                         child: Row(
                          children: [
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "4";
                                });
                              },
                              child: Text('4', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "5";
                                });
                              },
                              child: Text('5', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "6";
                                });
                              },
                              child: Text('6', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + " - ";
                                });
                              },
                              minWidth: 1,
                              child: Text('_', style: TextStyle(
                              color: Colors.red,
                              fontSize: 30
                            ),)),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                          child: Row(
                          children: [
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "1";
                                });
                              },
                              child: Text('1', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "2";
                                });
                              },
                              child: Text('2', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "3";
                                });
                              },
                              child: Text('3', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + " + ";
                                });
                              },
                              minWidth: 1,
                              child: Text('+', style: TextStyle(
                              color: Colors.red,
                              fontSize: 30
                            ),)),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                           child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + "0";
                                });
                              },
                              child: Text('0', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                                setState(() {
                                  show = show + ".";
                                });
                              },
                              child: Text('.', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),)),
                            FlatButton(
                              onPressed: (){
                               var t = show.split(' ');
                               first = double.parse(t[0]);
                               second= double.parse(t[2]);
                               switch (t[1]) {
                                 case '-': setState(() {
                                   result= first-second;
                                 }); break;
                                 case '+': setState(() {
                                   result= first+second;
                                 }); break;
                                 case 'x': setState(() {
                                   result= first*second;
                                 }); break;
                                 case '÷': setState(() {
                                   result= first/second;
                                 }); break;
                               }
                              },
                              child: Text('=', style: TextStyle(
                              color: Colors.red,
                              fontSize: 30
                            ),)),
                          ],
                        ),
                      ),
                    ],
                  )
                )
              )
            ],
              ),
        ),
        ),
    );
  }

}