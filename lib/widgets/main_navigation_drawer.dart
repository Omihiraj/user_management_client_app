import 'package:flutter/material.dart';
import 'package:user_management_client_app/home_page.dart';
import 'package:user_management_client_app/screens/main/add_new_user_screen.dart';
import 'package:user_management_client_app/screens/main/admin_profile_screen.dart';
import 'package:user_management_client_app/screens/main/all_users_screen.dart';

class MainNavigationDrawer extends StatelessWidget {
  const MainNavigationDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          header(context),
          Expanded(
            child: SingleChildScrollView(
              child: menuItems(context),
            ),
          ),
          footer(context), // Footer is now correctly placed and sized.
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AdminProfileScreen()));
            },
            child: const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          const Text(
            'johndoe@company.com',
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }

  Widget menuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          menuItem(
              context: context,
              icon: Icons.home_outlined,
              title: 'Home',
              destination: const HomePage()),
          menuItem(
              context: context,
              icon: Icons.workspaces_outline,
              title: 'All Users',
              destination: const AllUsersScreen()),
          menuItem(
              context: context,
              icon: Icons.add,
              title: 'Add New User',
              destination: const AddNewUserScreen()),
          const Divider(
            color: Colors.white10,
          ),
          menuItem(
              context: context,
              icon: Icons.notifications_outlined,
              title: 'Notifications',
              destination: const HomePage()),
        ],
      ),
    );
  }

  ListTile menuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required Widget destination,
  }) {
    return ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => destination));
        });
  }

  Widget footer(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          'Company (Pvt) Ltd.\nwww.company.com',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
