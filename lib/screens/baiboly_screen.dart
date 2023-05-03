import 'package:flutter/material.dart';

final List<String> testamentaTaloha = <String>[
  'genesisy',
  ' eksodosy',
  'levitikosy',
  'nomery',
  'deoteronomia',
  'josoa',
  'samoela_1',
  'samoela_2',
  'genesisy',
  ' eksodosy',
  'levitikosy',
  'nomery',
  'deoteronomia',
  'josoa',
  'samoela_1',
  'samoela_2',
  'genesisy',
  ' eksodosy',
  'levitikosy',
  'nomery',
  'deoteronomia',
  'josoa',
  'samoela_1',
  'samoela_2',
];

class BaibolyScreen extends StatelessWidget {
  const BaibolyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.red,
      body: Row(children: [
        Expanded(
          child: Container(
            color: Colors.blue,
            child: ListView(
              children: [
                for (final String book in testamentaTaloha)
                  ListTile(
                    title: Text(book),
                    onTap: () {
                      print(book);
                    },
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: ListView(
              children: [
                for (final String book in testamentaTaloha)
                  ListTile(
                    title: Text(book),
                    onTap: () {
                      print(book);
                    },
                  ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
