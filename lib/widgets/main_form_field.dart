import 'package:flutter/material.dart';
import 'package:food_delivery_ui_kit/utils/text_style.dart';

class MainFormField extends StatefulWidget {
  final String hintText;
  final String iconName;
  final bool isProcess;
  const MainFormField(
      {Key? key,
      required this.hintText,
      this.iconName = "",
      this.isProcess = false})
      : super(key: key);

  @override
  _MainFormFieldState createState() => _MainFormFieldState();
}

class _MainFormFieldState extends State<MainFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.isProcess
          ? const EdgeInsets.only(bottom: 20)
          : const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: widget.isProcess
            ? Border.all(color: Colors.white)
            : Border.all(
                color: Colors.grey[100]!,
              ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            color: Colors.blueGrey[100]!.withOpacity(.4),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: widget.iconName == ""
              ? null
              : Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    widget.iconName,
                    height: 12,
                    width: 12,
                  ),
                ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          hintStyle: AppText.mediumText.copyWith(
            color: Colors.grey[400],
          ),
          hintText: widget.hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
