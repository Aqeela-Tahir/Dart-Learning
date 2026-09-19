import 'dart:io';
/*
void main() {
  const String restaurantName = 'Masha Kitchen';
  print(restaurantName);

  const int mightyBurgerPrice = 1400;
  print('Burger price: $mightyBurgerPrice');

  stdout.write('Enter quantity of burgers: ');
  final String? input = stdin.readLineSync();
  final int? quantity = input == null ? null : int.tryParse(input.trim());

  if (quantity == null || quantity <= 0) {
    print('Invalid quantity. Please enter a positive number.');
    return;
  }

  print('Quantity ordered: $quantity');

  const int deliveryCharge = 200;
  print('Delivery charge is: $deliveryCharge');

  final int totalPrice = mightyBurgerPrice * quantity + deliveryCharge;
  print('Total price is: $totalPrice');

  final int discountedPrice = totalPrice - (totalPrice * 10 ~/ 100);
  print('Discounted price is: $discountedPrice');

  const bool isMember = true;
  print('Is member: $isMember');
  if (isMember) {
    print('You are a member, so you get a discount!');
  }

  // free delivery is available for orders above 2000.
  if (totalPrice > 2000 && isMember) {
    print('You are eligible for free delivery!');
  } else {
    print('You are not eligible for free delivery.');
  }
}*/
/*
void main() {
  stdout.write("Enter Maths marks: ");
  int math = int.parse(stdin.readLineSync()!);
  print("Maths marks: $math");

  stdout.write("Enter programming marks: ");
  int prog_marks = int.parse(stdin.readLineSync()!);
  print("Programming Marks are: $prog_marks");

  stdout.write("Enter database marks: ");
  int DB_marks = int.parse(stdin.readLineSync()!);
  print("Database marks are: $DB_marks");

  int total_marks = math + prog_marks + DB_marks;
  print("Total Marks are: $total_marks");


  int percentage = (total_marks * 100) ~/ 300;
  print("Percentage: $percentage%");

  int average= math+ prog_marks+DB_marks~/3;
  print("Average Marks are: $average");

}

void main() {
  stdout.write("Enter laptop price: ");
  int laptop_price = int.parse(stdin.readLineSync()!);
  print("Price:  $laptop_price");

  stdout.write("Enter quantity: ");
  int quantity = int.parse(stdin.readLineSync()!);
  print("Qunatity:  $quantity");
  int total_price = laptop_price * quantity;
  print("Total price: $total_price");
  double discount = 0.5;
  print("Discount: $discount");
  double discounted_price = total_price * discount;
  print("Discounted amount: $discounted_price");

  double final_price = total_price - discounted_price;
  print("Final price: $final_price");
}
*/

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  print("Number: $number");
  
  String result = (number % 2 == 0) ? "Even" : "Odd";
  print("Number is: $result");
}
