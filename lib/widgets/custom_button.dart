import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  late String btnText;
  final GestureTapCallback? onTap;
  bool isloading = false;
  CustomButton(
      {super.key, required this.btnText, this.onTap, required this.isloading});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.amber),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 90, right: 90, top: 15, bottom: 15),
              child: isloading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: Center(
                        child: SizedBox(child: CircularProgressIndicator()),
                      ),
                    )
                  : Text(
                      btnText,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 14, 14, 14),
                      ),
                    ),
            ),
          ),
        ));
  }
}
