import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Search());
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar(),
        ),
      ),
    );
  }
}
