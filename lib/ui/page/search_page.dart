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
        padding: EdgeInsets.only(top: 40, left: 5, right: 5, bottom: 5),
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
        child: Row(
          children: [
            Container(),
            SizedBox(
              width: 310,
            ),
            Icon(
              Icons.login_rounded,
              size: 20,
              color: Colors.orange,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.add_chart_rounded,
              size: 20,
              color: Colors.orange,
            )
          ],
        ));
  }
}
