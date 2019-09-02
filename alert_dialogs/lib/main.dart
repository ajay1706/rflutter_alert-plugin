import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage()
      );
      
    
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
        appBar: GradientAppBar( 
          title: Text("Home"),
          backgroundColorStart: Colors.red,
          backgroundColorEnd: Colors.blue,
        ),
        body: 
           Column(  
            children: <Widget>[
              FlatButton( 
                child: Text("Click me"),
                onPressed: (){
                  return     Alert(
      context: context,
 
      title: "Login",
      desc: "Flutter is more awesome with RFlutter Alert.",
      content: Form(child: 
      
      Column(
        children: <Widget>[
          TextFormField( 
            decoration: InputDecoration(  
              labelText: "Username"
            ),
          ),
          TextFormField( 
            decoration: InputDecoration(  
              labelText: "Password"
            ),
          ),
        ],
      ),)
    ).show();

                },
              )
            ],
          ),
        );
  }
}