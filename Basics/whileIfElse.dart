/*

ATM Transaction System

Write a Dart program that simulates a simple ATM system. The program should first ask the user 
to enter a PIN. The correct PIN is 1234, and the user has a maximum of 3 attempts to enter the 
correct PIN. If the user enters the correct PIN, the program should allow access to the ATM. If 
the PIN is incorrect, display an appropriate message and allow the user to try again. If the user 
enters an incorrect PIN three times, display "Your card has been blocked." and terminate the 
program. After successful PIN verification, the program should repeatedly display an ATM menu 
containing four options: 1. Check Balance, 2. Withdraw Money, 3. Deposit Money, and 4. Exit. 
The initial account balance should be 50,000. The menu must continue to appear until the user 
chooses option 4. If the user chooses Check Balance, display the current balance. If the user 
chooses Withdraw Money, ask the user to enter the withdrawal amount. First check whether the 
amount is greater than 0; if it is not, display "Invalid withdrawal amount." Otherwise, check 
whether the withdrawal amount is greater than the current balance. If it is greater than the
 balance, display "Insufficient balance." Otherwise, subtract the amount from the balance and 
 display the remaining balance. If the user chooses Deposit Money, ask for the deposit amount. 
 Check whether the amount is greater than 0; if it is not, display "Invalid deposit amount." 
 Otherwise, add the amount to the balance and display the updated balance. If the user enters 
 an invalid menu option, display "Invalid choice. Please try again." and show the menu again. 
 When the user chooses option 4, display "Thank you for using the ATM." and terminate the program.

Additional challenge: The user can make a maximum of 3 successful withdrawals during one ATM 
session. Once 3 withdrawals have been successfully completed, the program should display "Daily 
withdrawal limit reached." and should not allow another withdrawal. Use a while loop for the 

repeated ATM operations and another appropriate while loop for PIN attempts. Use nested if/else 
conditions where necessary. Do not use switch.

p
 */




import 'dart:io';

atmMenu(){
print("\n=======ATM MENU======");
  print("1- Check Balance");
  print("2- Withdraw Money");
  print("3- Deposit Money");
  print("4- EXIT");
}
void main(){
int correctPin=1234;
int balance=50000;
int dailyDepositLimit= 200000;
int enteredPin=0;
int attempts=0;
bool accesGranted;

//--------PIN VERIFICATION-------//


  stdout.write("Enter your pin: ");
  enteredPin= int.parse(stdin.readLineSync()!);
  if(enteredPin==correctPin){
    accesGranted=true;
    print("Pin verified");



    int choice=0;
while(choice!=0){
  atmMenu();
  stdout.write("Enter Your Choice: ");
  choice=int.parse(stdin.readLineSync()!);
  if(choice==1){
    print("Your current balance is: $balance");
  }
  else if(choice==2){
    stdout.write("Enter amount to withdraw: ");
    int withdraw= int.parse(stdin.readLineSync()!);
    
    if(withdraw>balance){
      print("Insufficent balance");
    }
    else{
          balance=balance - withdraw;
          print("Withdrawl successful!");
          print("Remaining balance is: $balance");
    }
  }



else if(choice==3){
stdout.write("Enter amount to deposit: ");
int deposit= int.parse(stdin.readLineSync()!);
    if(deposit<=0){
   print("Invalid deposit amount");
    }
    else{
      balance=balance+deposit;
      print("Deposit amount has successfulyy added!");
      print("New balance is: $balance");
    }
}
    else if(choice==4){
      print("Thank you for using the ATM");

    }
    else
{
print("Ivalid choice please try again!");
}
}

  }
else{
while(attempts>3){
if(enteredPin!=correctPin){
  accesGranted=false;
  print("Your card has been blocked!");
  print("Try again!");
  attempts++;
}
}
}



}

