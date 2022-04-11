import 'package:flutter/material.dart';
import 'package:dio/dio.dart'; // https://pub.dev/packages/dio   // https://pub.dev/packages/dio  // https://pub.dev/packages/dio

void main() {
  runApp(const Search());
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Search');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.close);
                  customSearchBar = const TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('Search');
                }
              });
            },
            icon: customIcon,
          ),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Search"),
        ),
      ),
    );
  }
}
