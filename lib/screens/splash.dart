import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class splash extends StatefulWidget {

  static const String path = '/splash'; 

  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
bool _visible = false;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _visible = true;
        skip(context);    
        });
    },);
  }


void skip(BuildContext context) {
   Future.delayed(Duration(seconds: 7), () {
           Navigator.of(context).pushNamed('/dashboard');
         },);  
}
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
       body: Padding(
         padding: EdgeInsets.only(bottom: 0),
         child: Center(        
          child: AnimatedOpacity(
            opacity: _visible? 1.0: 0.0,

            duration: Duration(milliseconds: 8000),
            child: Image(image: AssetImage('assets/images/logo_final.png'),
            width: 150
                     )
          ),
             ),
       ));
  }
}