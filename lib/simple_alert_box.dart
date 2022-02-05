library alert_box;

import 'package:flutter/material.dart';

class AlertBox {
  static showAlertBox({
    required BuildContext context,
    required String alertText,
    required String buttonText,
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
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  alertText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: darkTheme
                        ? const Color(0xffe0e0e0)
                        : const Color(0xff454545),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  color: const Color(0xffb3b3b3),
                  child: Text(
                    buttonText,
                    style:
                        const TextStyle(color: Color(0xff232323), fontSize: 14),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 30,
          );
        });
  }
}
