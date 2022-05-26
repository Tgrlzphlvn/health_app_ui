import 'package:flutter/material.dart';
import 'package:health_ux_kit/constants/project_strings.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      required this.hintText,
      this.suffixIcon,
      this.keyboardType,
      required this.obscureText})
      : super(key: key);
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> with ProjectStrings {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: textfieldTLR,
            child: SizedBox(
              width: 400,
              height: 70,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: elevatedButton28,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 10, spreadRadius: 0.4),
                    ]),
                child: Center(
                  child: Padding(
                    padding: textfieldLR20,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      obscureText: widget.obscureText,
                      showCursor: false,
                      keyboardType: widget.keyboardType,
                      style: TextStyle(
                          fontFamily: helvetica,
                          fontWeight: FontWeight.w600,
                          fontSize: 19),
                      decoration: InputDecoration(
                        suffixIcon: widget.suffixIcon,
                        hintText: widget.hintText,
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(style: BorderStyle.none, width: 0),
                          borderRadius: radius20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
