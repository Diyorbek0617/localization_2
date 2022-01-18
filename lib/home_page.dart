import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';


class Home_page extends StatefulWidget {

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Text("sentence",style: TextStyle(fontSize: 18,color: Colors.black,),).tr(),
            ),
          ),
          Row(
            children: [
              Expanded(child: FlatButton(
                onPressed: (){
                  context.locale=Locale("en","US");
                },
                color: Colors.green,
                child: Text("English",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
              ),),
              SizedBox(width: 8.0,),
              Expanded(child: FlatButton(
                onPressed: (){
                  context.locale=Locale("ja","JA");
                },
                color: Colors.red,
                child: Text("Japanese",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w400),),
              ),),
              SizedBox(width: 8.0,),
              Expanded(child: FlatButton(
                onPressed: (){
                  context.locale=Locale('ko','KO');
                },
                color: Colors.blue,
                child: Text("Korean",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.bold),),
              ),),
            ],
          ),
        ],
      ),
    );
  }
}