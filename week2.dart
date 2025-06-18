void main() {
  // Initial list of item prices
  List<double> itemPrices = [5.0, 20.0, 15.0, 8.5, 50.0];

  // Anonymous function to filter out items below $10
  List<double> filteredPrices = itemPrices.where((price) => price >= 10).toList();
  print("Filtered items (>= \$10): \$${filteredPrices}");

  // Apply a discount using a higher-order function
  List<double> discountedPrices = applyDiscount(filteredPrices, (price) => price * 0.9); // 10% discount
  print("Prices after 10% discount: \$${discountedPrices}");

  // Calculate factorial-based discount percent
  int itemCount = discountedPrices.length;
  int factorialDiscount = calculateFactorialDiscount(itemCount);
  print("Factorial discount for $itemCount items: $factorialDiscount%");

  // Apply factorial-based discount as an extra
  List<double> finalDiscountedPrices = applyDiscount(discountedPrices, (price) => price * (1 - factorialDiscount / 100));
  print("Prices after factorial discount: \$${finalDiscountedPrices}");

  // Calculate total including optional tax
  double total = calculateTotal(finalDiscountedPrices, taxRate: 0.08); // 8% tax
  print("Final total (including 8% tax): \$${total.toStringAsFixed(2)}");
}

/// Standard function to calculate total with optional tax
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.fold(0, (sum, price) => sum + price);
  return subtotal + (subtotal * taxRate);
}

/// Higher-order function that takes a discount function
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

/// Recursive function to calculate factorial discount
int calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}
