import 'package:flutter/material.dart';

void main() {
  runApp(const Settings());
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text('Settings'),
        TextButton(
          onPressed: null,
          child: Text('Version 0.0.1'),
        )
      ],
    )));
  }
}
