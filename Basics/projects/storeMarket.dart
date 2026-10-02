import 'dart:io';

void main() {
  int totalCustomers = 0;
  int totalItemsSold = 0;
  int totalProductsSold = 0;
  double totalSale = 0;
  double largestBill = 0;
  double smallestBill = 0;
  bool running = true;

  while (running) {
    print("\n==============ZellBurry Billing Management system==================");
    print("1- New Customer");
    print("2- Store summary");
    print("3- EXIT");

    stdout.write("Enter your choice: ");
    String? input = stdin.readLineSync();
    int choice = int.tryParse(input ?? '') ?? 0;

    if (choice == 1) {
      print("\n=========NEW CUSTOMER=========");
      stdout.write("Total products: ");
      int totalProducts = int.parse(stdin.readLineSync() ?? '0');

      int quantity = 0;
      double customerTotal = 0;
      int totalQty = 0;

      for (int i = 1; i <= totalProducts; i++) {
        print("");
        print("Product$i: ");
        stdout.write("Enter Price: ");
        double price = double.parse(stdin.readLineSync() ?? '0');
        stdout.write("Enter quantity: ");
        quantity = int.parse(stdin.readLineSync() ?? '0');

        double productTotal = price * quantity;
        customerTotal += productTotal;
        totalQty += quantity;
        print("Product total: $productTotal");
      }

      double discount = 0;
      if (customerTotal >= 10000) {
        discount = customerTotal * 20 / 100;
      } else if (customerTotal >= 5000) {
        discount = customerTotal * 10 / 100;
      } else if (customerTotal >= 2000) {
        discount = customerTotal * 5 / 100;
      }

      double finalBill = customerTotal - discount;
      print("\n=======Bill==========");
      print("Products= $totalProducts");
      print("Total Quantity: $totalQty");
      print("Subtotal: $customerTotal");
      print("Discount: $discount");
      print("Final Bill: $finalBill");

      double payment = -1;
      while ((payment - finalBill).abs() > 0.01) {
        stdout.write("Enter payment: ");
        payment = double.parse(stdin.readLineSync() ?? '0');
        if ((payment - finalBill).abs() > 0.01) {
          print("Payment does not match the final bill. Please enter correct amount");
        }
      }

      totalCustomers++;
      totalItemsSold += totalQty;
      totalProductsSold += totalProducts;
      totalSale += finalBill;

      if (totalCustomers == 1) {
        largestBill = finalBill;
        smallestBill = finalBill;
      } else {
        if (finalBill > largestBill) {
          largestBill = finalBill;
        }
        if (finalBill < smallestBill) {
          smallestBill = finalBill;
        }
      }

      const int boxWidth = 46;
      String padField(String value) {
        if (value.length > boxWidth - 4) {
          return value.substring(0, boxWidth - 4);
        }
        return value.padRight(boxWidth - 4);
      }

      String border = '+' + '-' * (boxWidth + 1) + '+';
      print(border);
      print('| ${padField('Customer Receipt')} |');
      print('| ${padField('Total Products: $totalProducts')} |');
      print('| ${padField('Total Quantity: $totalQty')} |');
      print('| ${padField('Subtotal: $customerTotal')} |');
      print('| ${padField('Discount: $discount')} |');
      print('| ${padField('Total Bill: $finalBill')} |');
      print('| ${padField('Payment: $payment')} |');
      print('| ${padField('Payment Successful')} |');
      print('| ${padField('THANK YOU FOR SHOPPING')} |');
      print(border);
    } else if (choice == 2) {
      print("\n=======STORE SUMMARY=======");
      if (totalCustomers == 0) {
        print("No sale has been made yet!");
      } else {
        print("Total Customers: $totalCustomers");
        print("Total Products Sold: $totalProductsSold");
        print("Total Items Sold: $totalItemsSold");
        print("Total Sale: $totalSale");
        print("Largest Bill: $largestBill");
        print("Smallest Bill: $smallestBill");
      }
    } else if (choice == 3) {
      running = false;
      print("Exiting the program. Thanks for using ZellBurry Billing Management system.");
    } else {
      print("Invalid choice. Please select a valid option.");
    }
  }
}