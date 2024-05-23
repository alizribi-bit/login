import 'package:flutter/material.dart';

Widget button(text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 10,
          ),
          textStyle: const TextStyle(
            fontSize: 20,
            fontFamily: 'CormorantGaramond',
          ),
        ),
        onPressed: () {},
        child: FittedBox(
          child: Text(
            text,
          ),
        ),
      ),
    ),
  );
}

TextFormField textFormFieldWidget(
    context, controller, TextInputType type, labele, icon, visible) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    obscureText: visible,
    decoration: DecorationWidget(context, labele, icon),
    cursorColor: Colors.black,
  );
}

InputDecoration DecorationWidget(BuildContext context, String text, icon) {
  return InputDecoration(
    fillColor: Colors.grey.shade400.withOpacity(.2),
    filled: true,
    prefixIcon: Padding(
      padding: const EdgeInsets.fromLTRB(15, 13, 3, 13),
      child: Icon(
        icon,
        //size: 20,
        //color: Colors.grey.shade400,
      ),
    ),
    label: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: Colors.grey.shade400),
      ),
    ),
    contentPadding: EdgeInsets.zero,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Color.fromARGB(255, 214, 214, 214)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.pink),
      gapPadding: 1.0,
      borderRadius: BorderRadius.circular(14),
    ),
  );
}
