import 'dart:io';

/*void main() {
  int y = 20;
  int z = 40;
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  print("numeber: $num");

  if (num > 100) {
    print("y=$y z=$z");
  }
}


void main(){
  int b;
  stdout.write("Enter a number: ");
  int a= int.parse(stdin.readLineSync()!);

if(a<10){
  b=0;
  print("b= $b");
}
else{
  b=99;
   print("b= $b");
}
}
*/

/*void main(){



  stdout.write("Enter amount1: ");
  int amount1= int.parse(stdin.readLineSync()!);
  print("amount1: $amount1");
  stdout.write("Enter amount1: ");
  int amount2= int.parse(stdin.readLineSync()!);
  print("amount2: $amount2");


  if(amount1 >10){
    if(amount2< 100){
      if(amount1>amount2){
        print("Greatest amount= $amount1");
      }
        else{
              print("Greatest amount= $amount2");
        }
    }
  
  }


}

void main(){
stdout.write("Enter a speed(in km per hour)");
int speed= int.parse(stdin.readLineSync()!);
if(speed>24){
  if(speed<56){
    print("Speed Is Normal");
  }
  else{
    print("You're Overspeeding!");
  }
}

}

void main(){
stdout.write("Enter a number(1 to 10):  ");
int number=int.parse(stdin.readLineSync()!);
if(number==1){
  print("I");
}
else if(number==2){
  print("II");
}
else if(number==3){
  print("III");
}else if(number==4){
  print("IV");
}else if(number==5){
  print("V");
}else if(number==6){
  print("VI");
}else if(number==7){
  print("VII");
}else if(number==8){
  print("VIII");
}else if(number==9){
  print("IX");
}else if(number==10){
  print("X");
}
else{
  print("ERROR! Please Enter a Number Between 1 and 10");
}


}
//Rectangle 1
void main(){
stdout.write("Enter length of Rectangle 1: ");
int LR1= int.parse(stdin.readLineSync()!);
stdout.write("Enter width of Rectangle 1: ");
int WR1= int.parse(stdin.readLineSync()!);
//Area of Rectangle 1
int AR1= LR1*WR1;
print("Area of Rectangle 1= $AR1");

//Rectangle 2

stdout.write("Enter length of Rectangle 2: ");
int LR2= int.parse(stdin.readLineSync()!);
stdout.write("Enter width of Rectangle 2: ");
int WR2= int.parse(stdin.readLineSync()!);

//Area of Rectangle 2

int AR2= LR2*WR2;
print("Area of Rectangle 1= $AR2");

if(AR1>AR2){
  print("Area of Rectangle 1 is greater than Area of Rectangle 2");
}
else if(AR1<AR2){
  print("Area of Rectangle 2 is greater than Area of Rectangle 1");
}
else{
  print("Both areas are equal");
}


}


void main(){
  stdout.write("Enter day(In number): ");
  int day= int.parse(stdin.readLineSync()!);


  stdout.write("Enter month(In number): ");
  int month= int.parse(stdin.readLineSync()!);

  stdout.write("Enter year(In number): ");
  int year= int.parse(stdin.readLineSync()!);


  int DM= day*month;
  print(DM);

  if(year==DM){
    print("Its a magic date");
  }
  else{
    print("Awww! not a magic date");
  }
  print("0$day/$month/19$year");
}




void main(){

stdout.write("Enter first primary color: ");
string color1= string.parse(stdin.readLineSync()!);
stdout.write("Enter second primary color: ");
string color2= string.parse(stdin.readLineSync()!);

}


void main(){
  int amount= 99;
  print("Amount= $amount");
stdout.write("Enter quantity: ");
int quantity= int.parse(stdin.readLineSync()!);
if(quantity>=10){
  if(quantity<=19){
  double discount=0.2;
    double dis2=0.2*100;
  double discounted_price=discount*99;
  double final_price= amount-discounted_price;
  print("You got $dis2%");
  print("Discounted price= $discounted_price");
  print("Amount payable= $final_price");
}
 }
else if(quantity>=20){
  if(quantity<=49){
  double discount=0.3;
    double dis3=0.3*100;
  double discounted_price=discount*99;
  double final_price= amount-discounted_price;
  print("You got $dis3%");
  print("Discounted price= $discounted_price");
  print("Amount payable= $final_price");
}
 }
else if(quantity>=50){
  if(quantity<=99){
  double discount=0.4;
    double dis4=0.4*100;
  double discounted_price=discount*99;
  double final_price= amount-discounted_price;
  print("You got $dis4%");
  print("Discounted price= $discounted_price");
  print("Amount payable= $final_price");
}
 }

 if(quantity>=100){
  double discount=0.5;
  double dis5=0.5*100;
  double discounted_price=discount*99;
  double final_price= amount-discounted_price;
  print("You got $dis5%");
  print("Discounted price= $discounted_price");
  print("Amount payable= $final_price");
}
 else{
  print("You are unable to avail discount!");
 }

}




void main() {
  stdout.write("enter a number: ");
  int number= int.parse(stdin.readLineSync()!);

  switch (number) {
    case 1:
      print("One");
      break;

    case 2:
      print("Two");
      break;

    case 3:
      print("Three");
      break;

    default:
      print("Invalid number");
  }
}
*/

void main(){
  stdout.write("Enter a number: ");
  int number= int.parse(stdin.readLineSync()!);
  switch(number){
    case 1:
    print("MONDAY");
    break;

    case 2:
    print("TUESDAY");
    break;


    case 3:
    print("WEDNESDAY");
    break;

    case 4:
    print("THURSDAY");
  
   default:
   print("invalid choice");
  }
}