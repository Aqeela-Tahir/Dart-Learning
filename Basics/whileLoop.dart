import 'dart:io';

/*void main() {
  const double maxTemp = 102.5;
  stdout.write("Enter the current temperature:");
  double currentTemp = double.parse(stdin.readLineSync()!);
  while (currentTemp > maxTemp) {
    stdout.write("The temperature is too high! Please enter a new temperature:");
    currentTemp = double.parse(stdin.readLineSync()!);
  }
print("The temperature is acceptable.");

}
*/

/*void main() {
  int correctPin = 1234;
  stdout.write("Enter your pin:");
  int userPin = int.parse(stdin.readLineSync()!);
  while (userPin != correctPin) {
    stdout.write("Enter your pin:");
    userPin = int.parse(stdin.readLineSync()!);
  }
  print("You have entered the correct pin.");
}*/
/*void main() {
  int balance = 5000;
  stdout.write("ENter amount to withdraw:");
  int amount = int.parse(stdin.readLineSync()!);
while(balance>amount){
  stdout.write("Enter amount to withdraw:");
  amount = int.parse(stdin.readLineSync()!);
}
print("You have withdrawn $amount. Your remaining balance is ${balance-amount}.");
}

void main() {
  int count = 5;
  while (count<=5) {
    print("Hello");
  }
}

void main() {
  int number = 1;

  while (number <= 5) {
    print(number);
    number++;
  }
}



void main() {
  int number = 5;

  while (number >= 1) {
    print(number);
    number--;
  }
}


void main() {
  int number = 2;

  while (number <= 10) {
    print(number);
    number += 2;
  }
}
  

void main() {
  int number = 1;

  while (number <= 5) {
    print(number);
  }
}





void main() {
  int number = 10;

  while (number >= 1) {
    print(number);
    number--;
  }
}




void main() {
  int number = 10;

  while (number >= 1) {
    print(number);
    number++;
  }
}




void main() {
  int number = 5;

  while (number != 10) {
    print(number);
    number++;
  }
}



void main() {
  int number = 1;

  while (number < 10) {
    if (number % 2 == 0) {
      print(number);
    }

    number++;
  }
}



void main() {
  int number = 1;
  int total = 0;

  while (number <= 4) {
    total = total + number;
    number++;
  }

  print(total);
}


void main() {
  int number = 10;

  while (number > 0) {
    print(number);

    if (number == 7) {
      break;
    }

    number--;
  }
}


void main() {
  int count = 0;

  while (count < 5) {
    print(count);
    count++;
    
  }
}

void main(){
  String keep_going= "y";
  while(keep_going=="y"){
    stdout.write("Enter amount of sales: ");
    int sale=int.parse(stdin.readLineSync()!);
    stdout.write("Enter commission rate: ");
    double comm_rate=double.parse(stdin.readLineSync()!);
    double commission= sale*comm_rate;
    print("Your commission is: $commission");

    stdout.write("Do you want to calculate another commision(Enter'y' for yes)");
    keep_going= stdin.readLineSync()!;
  }


}

void showCommission(){
  stdout.write("Enter amount of sales: ");
    int sale=int.parse(stdin.readLineSync()!);
    stdout.write("Enter commission rate: ");
    double comm_rate=double.parse(stdin.readLineSync()!);
    double commission= sale*comm_rate;
    print("Your commission is: $commission");

}
void main(){
  String keep_going= "y";
  while(keep_going=="y"){

showCommission();
stdout.write("Do you want to calculate another commision(Enter'y' for yes)");
    keep_going= stdin.readLineSync()!;
  }   
}

-----Write a C program to print numbers from 0 to 10 and 10 to 0 using two while loops.------
void main(){
int count=0;
while(count<=10){
  print("Accedants: $count");
count++;
}
print("\n");

count=10;
while(count>=0){
  print("Decendents: $count");
  count--;
}
print("\n");
}


void main(){
 int number=1;
 int sum=0;
 while(number!=0){
  stdout.write("Enter positive integars: ");
  number= int.parse(stdin.readLineSync()!);
 
 if(number>0){
  sum+=number;
  print("Sum of integars is: $sum ");
 }

 }
}

void main(){
  int mul=1;
  stdout.write("Enter number(between 1 and 5): ");
  int numbers= int.parse(stdin.readLineSync()!);
  while(numbers<=5){
      mul*=numbers;
      print("Product of integars is: $mul");
      numbers++;
    
  }

}

void main(){
  List<int> numbers=[];
  int count=0;
  bool duplicate=false;
  while(duplicate==false){
 stdout.write("Enter number: ");
 int number=int.parse(stdin.readLineSync()!);
 int i=0;
 while(i<count){
  if(numbers[i]==number){
  duplicate=true;
  }
  i++;
 }
 if(duplicate==false){
  numbers.add(number);
  count++;
 }
  }
print("Duplicate numbers found!");
}

void main(){
  stdout.write("Enter a number: ");
   int number= int.parse(stdin.readLineSync()!);
    int fact=1;
    int i=1;
    while(i<=number){
      fact=fact*i;
      i++;

    }
    print("Factorial of is: $fact");
}
Multiplication Table Using a While Loop

Write a C program that prompts the user to enter a positive integer.
 Use a while loop to print the multiplication table for that number up to 10.


void main(){
  stdout.write("Enter a number: ");
  int number= int.parse(stdin.readLineSync()!);
  print("Loop starts now");
  int counter=1;
  while(counter<=10){
    int result= counter*number;
    print("$number * $counter = $result");
    counter++;
  }
write a program to show numbers between 1 and 10


void main(){
  int number=1;
  while(number>=1 && number<=10){
    print("Numbers: $number");
     number++;
  }
 
}




void main(){
stdout.write("Enter a number: ");
  int n=int.parse(stdin.readLineSync()!);
  int number=1;
  int sum=0;
  while(number<=n){
    if(number%2==0){
      sum=sum+number;
print("All even numbers: $number");
    }
    
number++;
  
  }

 print("Sum of even numbers: $sum");
}

//count digits in number

void main(){
  stdout.write("Enter number: ");
  int number=int.parse(stdin.readLineSync()!);

  int count=0;
  while(number>0){
    number=number~/10;
    count++;
  }
  print("Number of digits are: $count");

}


// reverse number
void main(){
  stdout.write("Enter a number: ");
  int number= int.parse(stdin.readLineSync()!);

  int reverse=0;
  while(number>0){
    int digit=number%10;
    reverse=reverse*10+digit;
    number=number~/10;
  
  }
  print("Reverse of number: $reverse");
}


// check if a number is palindrom or not
void main(){
  stdout.write("Enter a number: ");
  int number= int.parse(stdin.readLineSync()!);

  int original=number;
  int reverse=0;

  while(number>0){
    int digit=number%10;
     reverse=reverse*10+digit;
number= number~/10;
  }
  if(original==reverse){
    print("Number is palindrom ");
  }
  else{
    print("Number is not palindrom");
  }
}


void main(){
  for(int number=100; number<=200; number++){
    int original=number;
    int temp=number;
    int reverse=0;
    while(temp>0){
       int digit=temp%10;
       reverse=reverse*10+digit;
       temp=temp~/10;

    }
    if(original==reverse){
print(original);
    }
  }


}

*/


void main(){
  stdout.write("Enter a number: ");
  int number=int.parse(stdin.readLineSync()!);
  int sum=0;
  while(number>0){
    int digit=number%10;
    sum=sum+digit;
    number=number~/10;

  }
  print("Sum of digits is: $sum");
}