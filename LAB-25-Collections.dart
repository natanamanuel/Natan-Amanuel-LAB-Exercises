void main() {
  List<Map<String, dynamic>> cart = [];

  // Add items to the cart (product name, quantity)
  cart.add({"name": "T-shirt", "quantity": 2});
  cart.add({"name": "Book", "quantity": 1});

  // Calculate total price (assuming prices are available for each item)
  double totalPrice = 0.0;
  for (Map<String, dynamic> item in cart) {
    // Implement price logic here (replace with actual prices)
    double price = 10.0; // Example price
    totalPrice += price * item["quantity"];
  }
  print("Total price: \$$totalPrice");

  // Remove an item from the cart (by index)
  if (cart.isNotEmpty) {
    cart.removeAt(0); // Remove the first item
    print("Item removed from cart.");
  }
}
