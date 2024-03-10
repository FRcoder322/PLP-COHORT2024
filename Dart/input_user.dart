import 'dart:io';

void main() {
  // Prompt the user for a number
  stdout.write("Enter a number: ");
  String input = stdin.readLineSync()!;

  // Parse the input as an integer
  try {
    int number = int.parse(input);

    // Check the conditions and print the appropriate message
    if (number > 10) {
      print("Your number is greater than 10");
    } else if (number < 10) {
      print("Your number is less than 10");
    } else {
      print("Your number is equal to 10");
    }
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}
