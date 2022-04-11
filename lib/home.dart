import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:dotenv/dotenv.dart' as dotenv;

var env = dotenv.DotEnv(includePlatformEnvironment: true)..load();

// Fetch data from crypto API
Future<Factory> fetchCrypto() async {
  final response = await http.get(
      Uri.parse('https://rest.coinapi.io/v1/exchangerate/BTC/USD'),
      headers: {'X-CoinAPI-Key': '${env['COINAPI_KEY']}'});

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return cryptoFromJson(response.body);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

Factory cryptoFromJson(String str) => cryptoFromJson(json.decode(str));

class Crypto {
  final int rate;
  final String time;
  final String assetIdBase;
  final String assetIdQuote;

  const Crypto({
    required this.rate,
    required this.time,
    required this.assetIdBase,
    required this.assetIdQuote,
  });
}

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto App'),
        centerTitle: true,
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text('Crypto App'),
          ],
        ),
      ),
    );
  }
}
