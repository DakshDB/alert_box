library alert_box;

import 'package:flutter/material.dart';

class AlertBox {
  static showAlertBox({
    required BuildContext context,
    required String title,
    required String body,
    String? buttonText1,
    String? buttonText2,
    Function()? onPressedButton1,
    Function()? onPressedButton2,
    bool darkTheme = false,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor:
                darkTheme ? const Color(0xff2d2d2d) : const Color(0xfff6f6f6),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: darkTheme
                    ? const Color(0xffe0e0e0)
                    : const Color(0xff454545),
              ),
            ),
            content: Text(
              body,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: darkTheme
                    ? const Color(0xffe0e0e0)
                    : const Color(0xff454545),
              ),
            ),
            actionsAlignment: buttonText1 != null || buttonText2 != null
                ? MainAxisAlignment.spaceBetween
                : null,
            actions: [
              buttonText1 != null
                  ? MaterialButton(
                      color: const Color(0xffb3b3b3),
                      child: Text(
                        buttonText1,
                        style: const TextStyle(
                            color: Color(0xff2d2d2d), fontSize: 14),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      onPressed: onPressedButton1,
                    )
                  : const SizedBox(),
              buttonText2 != null
                  ? MaterialButton(
                      color: const Color(0xffb3b3b3),
                      child: Text(
                        buttonText2,
                        style: const TextStyle(
                            color: Color(0xff2d2d2d), fontSize: 14),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      onPressed: onPressedButton2,
                    )
                  : const SizedBox(),
            ],
            elevation: 100,
          );
        });
  }
}
