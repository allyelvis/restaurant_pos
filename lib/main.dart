import 'package:flutter/material.dart';
import 'features/table_management/table_management.dart';
import 'features/order_management/order_management.dart';
import 'features/inventory_management/inventory_management.dart';
import 'features/payment_processing/payment_processing.dart';
import 'features/reporting/reporting.dart';
import 'features/employee_management/employee_management.dart';

void main() {
  runApp(RestaurantPOSApp());
}

class RestaurantPOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant POS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/table-management': (context) => TableManagement(),
        '/order-management': (context) => OrderManagement(),
        '/inventory-management': (context) => InventoryManagement(),
        '/payment-processing': (context) => PaymentProcessing(),
        '/reporting': (context) => Reporting(),
        '/employee-management': (context) => EmployeeManagement(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant POS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/table-management');
              },
              child: Text('Table Management'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/order-management');
              },
              child: Text('Order Management'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/inventory-management');
              },
              child: Text('Inventory Management'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment-processing');
              },
              child: Text('Payment Processing'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reporting');
              },
              child: Text('Reporting'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/employee-management');
              },
              child: Text('Employee Management'),
            ),
          ],
        ),
      ),
    );
  }
}
