part of 'widgets.dart';

class RecoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 5),
            width: MediaQuery.of(context).size.width - 50,
            height: MediaQuery.of(context).size.width - 50,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              children: [
                _buildCard('IRC EXA', 'Non-Tubless', '80/90-14', '\Rp.23.000',
                    'assets/ban.png', true, false, context),
                _buildCard('IRC EXA', 'Tubless', '80/90-14', '\Rp.23.000',
                    'assets/ban3.png', true, false, context),
                _buildCard('IRC EXA', 'Tubless', '80/90-14', '\Rp.23.000',
                    'assets/ban2.png', true, false, context),
                _buildCard('IRC EXA', 'Tubless', '', '\Rp.23.000',
                    'assets/ban1.png', true, false, context),
              ],
            ),
          ),
          SizedBox(height: 15)
        ],
      ),
    );
  }
}

Widget _buildCard(String name, String size, String type, String price,
    String imagePath, bool added, bool isFav, context) {
  return Padding(
    padding: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
    child: InkWell(
      onTap: () {},
      child: Container(
        height: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 5)
            ],
            color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Hero(
                tag: imagePath,
                child: Container(
                  height: 100,
                  width: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.fitWidth)),
                )),
            SizedBox(
              height: 3,
            ),
            Container(
              margin: EdgeInsets.only(left: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        maxLines: 11,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold),
                      ),
                      isFav
                          ? Icon(Icons.favorite_sharp, color: Colors.amber)
                          : Icon(Icons.favorite_sharp, color: Colors.grey)
                    ],
                  ),
                  Text(
                    size,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Verela',
                        fontSize: 10),
                  ),
                  Text(
                    'Ukuran : ' + type,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Verela',
                        fontSize: 10),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        color: Colors.orange,
                        fontFamily: 'Verela',
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
