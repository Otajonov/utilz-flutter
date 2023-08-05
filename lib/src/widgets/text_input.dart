import 'package:flutter/material.dart';

import '../theme/colors.dart';

class TextInput extends StatelessWidget {

  final dynamic controller;
  final String hint;
  final String type;
  const TextInput({Key? key,
    this.controller,
    this.hint = "Type here ...",
    this.type = 'text',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 3, vertical: 3),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(.05),
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12), bottom: Radius
              .circular(12)),
        ),
        child: TextField(
          obscureText: type == 'password',
          controller: controller,
          //autofocus: true,
          minLines: 1,
          maxLines: 1,
          // keyboardType: TextInputType.visiblePassword,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 18),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(
                left: 12.0),
          ),

          onChanged: (data) {},
        ),
      );
  }
}
