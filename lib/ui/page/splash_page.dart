part of 'page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: MainPage(),
          image: new Image.asset("assets/logo.png"),
          photoSize: 120.0,
          backgroundColor: Colors.white,
        ));
  }
}
