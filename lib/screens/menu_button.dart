import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  Color color;
  Option({this.icon, this.title, this.color});
}

final options = [
  Option(
    icon: Icon(Icons.help_outline, size: 30.0),
    title: 'Help & Support',
    color: Color.fromRGBO(255, 156, 24, 1),
  ),
  Option(
    icon: Icon(Icons.settings, size: 30.0),
    title: 'Setting',
    color: Color.fromRGBO(255, 156, 24, 1),
  ),
  Option(
    icon: Icon(Icons.exit_to_app, size: 30.0),
    title: 'Log out',
    color: Color.fromRGBO(255, 156, 24, 1),
  ),
];