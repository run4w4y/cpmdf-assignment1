import 'package:flutter/material.dart';
import 'models/joke.dart';

class JokeView extends StatelessWidget {
  final Joke joke;

  const JokeView({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Padding(
        padding: EdgeInsets.all(20),
      ),
      Container(
          padding: const EdgeInsets.all(20),
          child: Text(joke.value, style: const TextStyle(fontSize: 21))),
    ]);
  }
}
