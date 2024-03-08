import 'dart:async';

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate network delay
  List<String> quotes = [
    "The journey of a thousand miles begins with a single step.",
    "Be the change you wish to see in the world.",
    "The only way to do great work is to love what you do.",
  ];
  int randomIndex = Random().nextInt(quotes.length);
  return quotes[randomIndex];
}

void main() async {
  String quote = await fetchRandomQuote();
  print("Your random quote: $quote");
}
