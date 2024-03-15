void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Mango', 'color': 'Green', 'price': 3.0},
    {'name': 'Goava', 'color': 'Lite green', 'price': 2.0},
    {'name': 'Lal Angur', 'color': 'Red', 'price': 3.0}
  ];

  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print('Fruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double price = fruit['price'];
    double discountedPrice = price - (price * (discountPercentage / 100));
    fruit['price'] = discountedPrice;
  }
}
