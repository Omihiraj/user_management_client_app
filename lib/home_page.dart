import 'package:flutter/material.dart';
import 'package:user_management_client_app/screens/main/add_new_user_screen.dart';
import 'package:user_management_client_app/widgets/main_navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const MainNavigationDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AddNewUserScreen()));
        },
        tooltip: 'Add New User',
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
