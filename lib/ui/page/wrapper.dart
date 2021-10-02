part of 'page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserCredential firebaseuser = Provider.of<UserCredential>(context);
    if (firebaseuser == null) {
      if (!(prevPageEvent is GoToSpashEvent)) {
        prevPageEvent = GoToSpashEvent();
        context.read<PageBloc>().add(prevPageEvent);
      }
    } else {
      if (!(prevPageEvent is GoToMainEvent)) {
        context.read<UserBloc>().add(LoadUser(firebaseuser.user.uid));
        prevPageEvent = GoToMainEvent();
        context.read<PageBloc>().add(prevPageEvent);
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
