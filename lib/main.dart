import 'package:almanac/pages/category_page.dart';
import 'package:almanac/pages/login_page.dart';
import 'package:almanac/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final Auth _auth = Auth();
  // final bool isLogged = await _auth.isLogged();
  final bool isLogged = false;
  final Almanac myApp = Almanac(
    initialRoute: isLogged ? '/explore' : '/login',
  );
  runApp(myApp);
}

class Almanac extends StatelessWidget {
  final String initialRoute;

  const Almanac({Key key, this.initialRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Almanac',
      initialRoute: '/explore',
      routes: {
        '/onboarding': (context) => LoginPage(),
        '/': (context) => LoginPage(),
        '/login': (context) => LandingPage(),
        '/explore': (context) => CategoryPage(),
      },
    );
  }
}
