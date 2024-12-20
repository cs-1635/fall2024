import 'package:flutter/material.dart';

import 'router.dart' as LocalRouter;
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            body: Home(),
        ),
        onGenerateRoute: LocalRouter.Router.generateRoute,
        initialRoute: homeRoute,
    );

  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Home'),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: (){
                Navigator.pushNamed(context, feedRoute, arguments: '-new/data from home');
              },
              child: const Text('Click to go somewhere'),
            )
          ],
        )
      ),
    );
  }
}


class Feed extends StatelessWidget {
  final String data;

  const Feed(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             Text('Feed: $data'),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Back...'),
            )
          ],
        ),
      ),
    );

  }
}
