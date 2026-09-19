import 'dart:io';

/*void main() {
  print("Is card inserted? true/false");
  bool cardInserted = bool.parse(stdin.readLineSync()!);

  print("Is PIN correct? true/false");
  bool pinEntered = bool.parse(stdin.readLineSync()!);

  print("Is account active? true/false");
  bool accountActive = bool.parse(stdin.readLineSync()!);

  if (cardInserted && pinEntered && accountActive) {
    print("Access granted. You can withdraw money.");
  } else {
    print("Access denied. Please check your card, PIN, and account status.");
  }
}


void main() {
  const String correctPin = '1234';
  const String CardNumber = '0246813579';

  stdout.write('Enter your PIN: ');
  final String enteredPin = stdin.readLineSync()?.trim() ?? '';

  stdout.write('Enter your card number: ');
  final String enteredCardNumber =
      stdin.readLineSync()?.trim() ?? '';

  stdout.write('Is your account active? (true/false): ');
  final String accountInput =
      stdin.readLineSync()?.trim().toLowerCase() ?? '';

  final bool accountActive = accountInput == 'true';

  if (enteredCardNumber != CardNumber) {
    print('Invalid card number.');
  } else if (enteredPin != correctPin) {
    print('Incorrect PIN.');
  } else if (!accountActive) {
    print('Account is inactive.');
  } else {
    print('Access granted. You can withdraw money.');
  }
}*/

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  print("numeber: $num");

  if (num > 100) {
    print("y=20" + "z=40");
  }
}
