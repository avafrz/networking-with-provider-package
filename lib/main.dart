import 'package:flutter/material.dart';
import '../model/favourite.dart';
import '../screens/favourites_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
         '/':(ctx) => const LoginScreen(),
          HomeScreen.routeName : (ctx) => const HomeScreen(),
          FavoritesScreen.routeName : (ctx) => const FavoritesScreen(),
        },
      ),
    );
  }
}
