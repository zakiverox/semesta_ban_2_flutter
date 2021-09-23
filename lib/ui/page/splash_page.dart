part of 'page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo.png"))),
              child: GestureDetector(
                onTap: () {
                  context.bloc<PageBloc>().add(GoToLoginEvent());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
