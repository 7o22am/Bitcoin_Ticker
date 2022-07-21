import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'album.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=133125C6-9CA3-4067-A737-2ABC35E9BB22'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}