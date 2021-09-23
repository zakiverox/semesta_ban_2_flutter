part of 'page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseuser = Provider.of<FirebaseUser>(context);
    if (firebaseuser == null) {
      if (!(prevPageEvent is GoToSpashEvent)) {
        prevPageEvent = GoToSpashEvent();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    } else {
      if (!(prevPageEvent is GoToMainEvent)) {
        context.bloc<UserBloc>().add(LoadUser(firebaseuser.uid));
        prevPageEvent = GoToMainEvent();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }
    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSpalshpage)
            ? SplashPage()
            : (pageState is OnLoginPage)
                ? SignInPage()
                : MainPage());
  }
}
