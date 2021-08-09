import 'package:flutter/material.dart';

void navigateTo(BuildContext context, Widget page) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));

void navigateAndDispose(BuildContext context, Widget Page) =>
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Page), (route) => false);
