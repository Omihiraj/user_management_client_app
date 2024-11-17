import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Popupsucess extends StatelessWidget {
  const Popupsucess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Dialog with Lottie"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedButton(
                text: "Success",
                color: Colors.amber,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.noHeader,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    body: Column(
                      children: [
                        Lottie.asset(
                          'assets/success.json',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Success!",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}