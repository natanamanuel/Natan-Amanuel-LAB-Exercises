class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create Product objects
  Product product1 = Product("T-shirt", 15.99, 2);
  Product product2 = Product("Book", 29.50, 1);

  // Calculate and print total cost
  double totalCost1 = product1.calculateTotalCost();
  double totalCost2 = product2.calculateTotalCost();

  print(
      "Total cost of ${product1.name}s (${product1.quantity}): \$${totalCost1}");
  print(
      "Total cost of ${product2.name} (${product2.quantity}): \$${totalCost2}");
}
