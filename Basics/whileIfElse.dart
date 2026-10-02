import 'dart:io';

void main() {
  int correctPin = 1234;
  int balance = 50000;
  int attempts = 3;

  while (attempts > 0) {
    stdout.write("Enter Pin: ");
    int enteredPin = int.parse(stdin.readLineSync()!);

    if (enteredPin == correctPin) {
      print("You have logged In successfully!");

      int choice = 0;

      while (choice != 4) {
        print("\n======= ATM MENU =======");
        print("1- Check Balance");
        print("2- Withdraw Money");
        print("3- Deposit Money");
        print("4- EXIT");

        stdout.write("Enter your choice: ");
        choice = int.parse(stdin.readLineSync()!);

        if (choice == 1) {
          print("Your balance is: $balance");
        }

        else if (choice == 2) {
          stdout.write("Enter amount to withdraw: ");
          int withdraw = int.parse(stdin.readLineSync()!);

          if (withdraw <= 0) {
            print("Invalid withdrawal amount!");
          }

          else if (withdraw > balance) {
            print("Balance is insufficient!");
          }

          else {
            balance = balance - withdraw;
            print("Current balance is: $balance");
          }
        }

        else if (choice == 3) {
          stdout.write("Enter amount to deposit: ");
          int deposit = int.parse(stdin.readLineSync()!);

          if (deposit <= 0) {
            print("Invalid deposit amount!");
          }

          else if (deposit > 100000) {
            print("Deposit amount is more than daily deposit limit!");
          }

          else {
            balance = balance + deposit;
            print("Your current balance is: $balance");
          }
        }

        else if (choice == 4) {
          print("Exit");
        }

        else {
          print("Invalid choice!");
        }
      }

      break;
    }

    else {
      attempts--;

      if (attempts > 0) {
        print("Incorrect PIN. Attempts remaining: $attempts");
      }

      else {
        print("Incorrect PIN.");
        print("Your card has been blocked.");
      }
    }
  }
}
