import 'package:flutter/material.dart';
import 'package:health_ux_kit/constants/project_colors.dart';
import 'package:health_ux_kit/constants/project_strings.dart';
import 'package:health_ux_kit/view/home_view.dart';

class CustomElevatedButton extends StatelessWidget
    with ProjectStrings, ProjectColors {
  CustomElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: elevatedInset30,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeView(),
            ),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height / 14,
          width: MediaQuery.of(context).size.width / 1.3,
          child: Center(
            child: Text(
              loginText,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: bottomWhite,
                  fontFamily: helvetica),
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [floatingGreen, teal]),
            boxShadow: [
              BoxShadow(
                  color: shadowGrey, offset: const Offset(2, 2), blurRadius: 10)
            ],
            borderRadius: elevatedButton28,
          ),
        ),
      ),
    );
  }
}
