import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var sum1=0;
  double num1 = 0.0,num2 = 0.0,sum=0.0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doDiv(){
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);

      sum = (num1 / num2);
      sum1=sum.floor();
    });
  }
  void doSum(){
    setState(() {


      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      sum = num1 + num2;
      sum1=sum.floor();
    });
  }
  void doSub(){
    setState(() {

      num1=double.parse(t1.text);
      num2=double.parse(t2.text);

      sum = num1 - num2;
      sum1=sum.floor();
    });
  }
  void doMulti(){
    setState(() {

      num1=double.parse(t1.text);
      num2=double.parse(t2.text);

      sum = num1 * num2;
      sum1=sum.floor();
    });
  }
  void doClear(){
    setState(() {
    num1=0.0;
    num2=0.0;
    t1.text="0";
    t2.text="0";
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: EdgeInsets.all(40.0),
        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text("Output :  $sum",
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.lightGreen,
              fontWeight: FontWeight.bold,
            ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Emter number 1"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Emter number 1"
              ),
              controller: t2,
            ),

            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(onPressed: doSum ,
                child: new Text("+"),
                color: Colors.blueGrey,),
                new MaterialButton(onPressed: doSub,
                  child: new Text("-"),
                  color: Colors.blueGrey,
                ),

              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(onPressed: doMulti,
                  child: new Text("*"),
                color: Colors.blueGrey,
                ),
                new MaterialButton(onPressed: doDiv,
                  child: new Text("/"),
                color: Colors.blueGrey,
                ),

              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(onPressed: doClear,child: new Text("clear"),color: Colors.grey,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
