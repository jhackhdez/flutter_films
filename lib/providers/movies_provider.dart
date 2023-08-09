import 'package:flutter/material.dart';
import 'package:flutter_films/models/now_playing_response.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '5552f84ddc388bd6af04321e83b4055e';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-Es';

  MoviesProvider() {
    print('MoviesProvider inicializado');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    print(nowPlayingResponse.results[1].title);
  }
}
