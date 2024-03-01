import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Sign In',style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
        obscureText: false,
            decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: 'EMAIL'
            ),
      ),
        SizedBox(height: 20,),
        TextField(
          obscureText: true,
          decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: 'PASSWORD'
          ),
        ),
      SizedBox(height: 10,),
      ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red,fixedSize: Size(300, 50)),
          onPressed: (){ },
          child: Text('LOGIN',style: TextStyle(fontSize: 20),)
      ),
          SizedBox(height: 30,),
          Text('OR',style: TextStyle(fontSize: 20),),
          ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.blue,fixedSize: Size(300, 50)),
              onPressed: (){ },
              child: Text('Facebook login')
          ),

        ],
    ),

      ),
    );
  }
}
