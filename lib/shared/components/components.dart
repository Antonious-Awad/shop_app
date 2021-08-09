import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void navigateTo(BuildContext context, Widget page) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));

void navigateAndDispose(BuildContext context, Widget Page) =>
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Page), (route) => false);
// ignore: import_of_legacy_library_into_null_safe

Widget myDivider() => Container(
      color: Colors.grey,
      width: double.infinity,
      height: 1,
    );

Widget textField({
  required TextEditingController controller,
  required TextInputType keyboard,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  required Function(String?) valide,
  required String label,
  required IconData preIcon,
  IconData? sufficon,
  bool password = false,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      enabled: isClickable,
      controller: controller,
      obscureText: password,
      keyboardType: keyboard,
      onFieldSubmitted: (value) => onSubmit!(value),
      onChanged: (value) => onChange!(value),
      validator: (value) => valide(value),
      decoration: InputDecoration(
        //hintText: "Enter your email address",
        labelText: "$label",
        border: OutlineInputBorder(),
        prefixIcon: Icon(
          preIcon,
        ),
        suffixIcon: sufficon != null
            ? IconButton(
                onPressed: () => suffixPressed!(),
                icon: Icon(
                  sufficon,
                ),
              )
            : null,
      ),
      onTap: () => onTap!(),
    );
Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: ()=>function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );
