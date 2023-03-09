import 'package:dio/dio.dart';
import 'models/joke.dart';

const _apiBaseUrl = 'https://api.chucknorris.io/';

class JokesApiClient {
  final Dio _httpClient = Dio(BaseOptions(baseUrl: _apiBaseUrl));

  Future<Joke?> getRandomJoke() async {
    Joke? joke;

    var res = await _httpClient.get('/jokes/random');
    joke = Joke.fromJson(res.data);

    return joke;
  }
}
