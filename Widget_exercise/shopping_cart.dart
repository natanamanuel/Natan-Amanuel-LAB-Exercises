import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Your app bar code here

        leading: IconButton(
    icon: Icon(Icons.arrow_back_ios),
    onPressed: () => Navigator.pop(context),
  ),
  title: Text('Shopping Cart'),
  actions: [
    IconButton(
      icon: Icon(Icons.more_horiz),
      onPressed: () => {},
    ),
  ],

      ),
      
      
      
      
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListView.builder(
  itemCount: 3, // Replace with the number of products in your cart
  itemBuilder: (context, index) => ProductCard(
    productName: 'Calas',
    price: 15.00,
    quantity: 1,
  ),
)
            
   Card(
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Text('Calas', style: TextStyle(fontSize: 16.0)),
                Spacer(),
                Text('\$15.00', style: TextStyle(fontSize: 16.0)),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              children: [
                Text('Quantity: 1', style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () => {},
                ),
              ],
            ),
          ],
        ),
        Image.asset('assets/images/socks.png'), 
      ],
    ),
  ),
)         
            
            Divider(height: 1.0, thickness: 1.0),
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text('Subtotal', style: TextStyle(fontSize: 16.0)),
    Text('\$60.98', style: TextStyle(fontSize: 16.0)),
  ],
)
            ElevatedButton(
  onPressed: () => {},
  child: Text('Checkout $67.08'),
  style: ElevatedButton.styleFrom(
    primary: Colors.green,
    textStyle: TextStyle(color: Colors.white),
    minimumSize: Size(double.infinity, 50.0),
  ),
)
          ],
        ),
      ),
    );
  }
}