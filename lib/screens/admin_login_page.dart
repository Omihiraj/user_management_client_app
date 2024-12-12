import 'package:flutter/material.dart';
import 'package:user_management_client_app/widgets/custom_button.dart';
import 'package:user_management_client_app/widgets/custom_textfield.dart';

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final TextEditingController emailFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();
  String? emailErrorText;
  bool isLoading = false;
  String? passwordErrorText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 7, 7, 7),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    child: Opacity(
                      opacity: 0.6,
                      child: Image.network(
                        'https://images.pexels.com/photos/7841844/pexels-photo-7841844.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Welcome Back",
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Enter your credential to login",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?t=st=1733998458~exp=1734002058~hmac=fa9cf45170b5067190519eaacb6a78dbab6700f324b3878747ca597c1c128871&w=740',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            custom_textfield(
                              textfieldvalue: "Email",
                              controller: emailFieldController,
                              errorText: emailErrorText,
                            ),
                            custom_textfield(
                              textfieldvalue: "Password",
                              controller: passwordFieldController,
                              errorText: passwordErrorText,
                            ),
                            CustomButton(
                              isloading: isLoading,
                              btnText: "LOGIN",
                              onTap: () {},
                            ),
                            const SizedBox(
                              height: 292,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
