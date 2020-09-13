import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

class WidgetHelpers {

  ProgressDialog getDialogLinearDialog(BuildContext context, String message) =>
      ProgressDialog(
        context,
        type: ProgressDialogType.Normal,
        isDismissible: false,
        customBody: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          color: Color.fromRGBO(34, 12, 44, 1),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  message,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 7.0,
                ),
                LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromRGBO(244, 13, 193, 1)),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      );

}
