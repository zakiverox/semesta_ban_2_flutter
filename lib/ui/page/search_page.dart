part of 'page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController serach;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(defaultMargin, 40, defaultMargin, 40),
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange.withOpacity(1),
              Colors.orange.withOpacity(0.4)
            ]),
      ),
    );
  }
}
