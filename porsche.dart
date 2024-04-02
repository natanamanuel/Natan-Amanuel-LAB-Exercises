import 'package:flutter/material.dart';

class PorscheDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(


         backgroundColor: Colors.white,
  leading: IconButton(
    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
    onPressed: () => Navigator.pop(context),
  ),
  title: Text('1975 Porsche 911 Carrera', style: TextStyle(fontSize: 18.0, color: Colors.black)),
  actions: [
    IconButton(
      icon: Icon(Icons.share, color: Colors.black),
      onPressed: () => {},
    ),
  ],

      ),
      
      
      
      
      
      
      
      
      body: SingleChildScrollView( // Allow scrolling for long content
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.asset('assets/image.jpg'),

            
            Divider(height: 1.0, thickness: 1.0, color: Colors.grey[400]),
            
            










            

            Row(
  children: [
    Icon(Icons.format_line_spacing, color: Colors.grey[400]),
    SizedBox(width: 8.0),
    Text('Essential Information', style: TextStyle(fontSize: 14.0, color: Colors.grey[400])),
  ],
),

Text('Year, Make, Model, VIN',),
Row(
  children: [
    Icon(Icons.calendar_today, color: Colors.grey[400]),
    SizedBox(width: 8.0),
    Text('Year: 1975', style: TextStyle(fontSize: 14.0, color: Colors.grey[400])),
    Spacer(),
    Icon(Icons.drive_eta, color: Colors.grey[400]),
    SizedBox(width: 8.0),
    Text('Make: Porsche', style: TextStyle(fontSize: 14.0, color: Colors.grey[400])),
  ],
),



            


            
            
            
            
            
            
            
            

            Text('Description', style: TextStyle(fontSize: 16.0, color: Colors.black)),
SizedBox(height: 8.0),
Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),

            


            
            
            
            

            Text('Photos', style: TextStyle(fontSize: 16.0, color: Colors.black)),
SizedBox(height: 8.0),

Row(
  children: [
    Image.asset('assets/image1.jpg', width: 100.0, height: 100.0),
    SizedBox(width: 8.0),
    Image.asset('assets/image1.jpg', width: 100.0, height: 100.0),
    SizedBox(width: 8.0),
    Image.asset('assets/image1.jpg', width: 100.0, height: 100.0),
  ],
),

            
          ],
        ),
      ),
    );
  }
}