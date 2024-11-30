import 'package:flutter/material.dart';
import 'package:user_management_client_app/widgets/employee_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Employee List',style: TextStyle(color: Colors.blue,fontSize: 25))),
      body: const EmployeeCard()
     
    );
  }
}
