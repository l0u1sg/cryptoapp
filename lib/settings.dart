import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() {
  runApp(const Settings());
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Future<PackageInfo> _getPackageInfo() {
    return PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: FutureBuilder<PackageInfo>(
                future: _getPackageInfo(),
                builder: (BuildContext context,
                    AsyncSnapshot<PackageInfo> snapshot) {
                  if (snapshot.hasError) {
                    return const Text("ERROR");
                  } else if (!snapshot.hasData) {
                    return const Text("Loading...");
                  }
                  final data = snapshot.data!;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('App Name: ${data.appName}'),
                      Text('Package Name: ${data.packageName}'),
                      Text('Version: ${data.version}'),
                      Text('Build Number: ${data.buildNumber}'),
                    ],
                  );
                })));
  }
}
