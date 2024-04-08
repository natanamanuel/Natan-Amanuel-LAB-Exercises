import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      initialRoute: '/',
     routes: {
       '/': (context) => ScreenOne(),
       '/second': (context) => ScreenTwo()
     },

      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: ScreenOne(),
    );
  }
}


class ScreenOne extends StatelessWidget {
  
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Screen One"),
     ),
     body: Center(
       child: ElevatedButton(
           child: const Text("Next"),
           
          onPressed: () {
             Navigator.push(
                 context,
                 MaterialPageRoute(
                     builder: (BuildContext context) => ScreenTwo()));

           }
       ),
     ),
   );
 }
}



class ScreenTwo extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Screen Two"),
     ),
     body: Center(
       child: ElevatedButton(
           child: const Text("Back"), 
           onPressed: () => Navigator.pop(context)),
       ),
     );
 }
}






class ScreenX extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Screen X"),
     ),
     body: Center(
       child: ElevatedButton(
           child: const Text("Next"),
           onPressed: () {
             Navigator.push(
                 context, 
MaterialPageRoute(
                     builder: (BuildContext context) => ScreenY(),
                     settings: const RouteSettings(arguments: "data from x")
   )
);
           }),
     ),
   );
 }
}




class ScreenY extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   final text = 
ModalRoute.of(context)!.settings.arguments as String;
   return Scaffold(
     appBar: AppBar(
       title: const Text("Screen Y"),
     ),
     body: Center(child: Text(text)),
   );
 }
}











