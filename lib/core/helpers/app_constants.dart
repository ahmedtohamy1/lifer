import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static void showErrorDialog(
      {required BuildContext context, required String msg}) {
    showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text(
                msg,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold)),
                  child: const Text('Ok'),
                )
              ],
            ));
  }

/*   static void showCustomSnakeBar(context, msg, isSuccess) {
    Flushbar(
      message: msg,
      icon: isSuccess
          ? Icon(
              Icons.check,
              size: 28.0,
              color: Colors.blue[300],
            )
          : const Icon(
              Icons.error_outline,
              size: 28.0,
              color: Colors.red,
            ),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      duration: const Duration(seconds: 3),
      showProgressIndicator: true,
      leftBarIndicatorColor: AppColors.mainOrange,
      messageSize: 10,
    ).show(context);
  }
 */

  static showSnackBar({
    required BuildContext context,
    required String msg,
  }) async {
    final snackBar = SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            msg,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /*  static void showToast(
      {required String msg, Color? color, ToastGravity? gravity}) {
    Fluttertoast.showToast(
        textColor: AppColors.darkBlue,
        toastLength: Toast.LENGTH_LONG,
        msg: msg,
        backgroundColor: color ?? AppColors.bgOrange,
        gravity: gravity ?? ToastGravity.BOTTOM);
  }

 */
}
