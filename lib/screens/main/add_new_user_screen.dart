import 'package:flutter/material.dart';
import 'package:user_management_client_app/widgets/main_navigation_drawer.dart';

class AddNewUserScreen extends StatelessWidget {
  const AddNewUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New User',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const MainNavigationDrawer(),
    );
  }
}
