import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String name;
  final bool expandable;
  TextInputType? textInputType;

  TextFieldWidget(
      {required this.name,
      required this.expandable,
      required this.textInputType})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.top,
          textAlign: TextAlign.right,
          maxLines: null,
          keyboardType: textInputType,
          expands: expandable,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffc163ff), width: 1),
                  borderRadius: BorderRadius.circular(30)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffc163ff), width: 1.5),
                  borderRadius: BorderRadius.circular(30)),
              hintText: name,
              hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          autocorrect: false,
          autovalidateMode: AutovalidateMode.always,
        ),
      ),
    );
  }
}
