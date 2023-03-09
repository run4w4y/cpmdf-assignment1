import 'models/joke.dart';
import 'package:flutter/material.dart';
import 'jokes_api.dart';
import 'joke_view.dart';

class JokePage extends StatefulWidget {
  const JokePage({super.key});

  @override
  JokePageState createState() => JokePageState();
}

class JokePageState extends State {
  final JokesApiClient _apiClient = JokesApiClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: FutureBuilder<Joke?>(
                future: _apiClient.getRandomJoke(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Joke? joke = snapshot.data;
                    if (joke != null) {
                      return Column(children: <Widget>[
                        JokeView(joke: joke),
                        ElevatedButton(
                          onPressed: () => setState(() {}),
                          child: const Text('Fetch a new joke'),
                        )
                      ]);
                    }
                  }

                  return const CircularProgressIndicator();
                })));
  }
}
