import 'package:flutter/material.dart';
import 'package:mvvm_flutter/views/movies_list_view.dart';
import 'package:mvvm_flutter/viewmodels/movies_list_view_model.dart';
import 'package:provider/provider.dart';
void main() => runApp(const App());
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies MVVM Example",
        debugShowCheckedModeBanner: true,
        theme: ThemeData(primarySwatch: Colors.teal),
        home:
        ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: const MovieListView(),
        )
    );
  }
}