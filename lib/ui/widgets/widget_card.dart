part of 'widgets.dart';

class widgetCard extends StatelessWidget {
  bool isFav;
  @override
  Widget build(BuildContext context) {
    isFav = true;
    return Container(
      width: 162,
      height: 250,
      padding: EdgeInsets.symmetric(),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                offset: Offset(3, 3),
                color: Colors.grey[300].withOpacity(0.2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 162,
            height: 162,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(image: AssetImage("assets/ban.png")),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      offset: Offset(3, 3),
                      color: Colors.grey[300].withOpacity(0.2))
                ]),
          ),
          Container(
            padding: EdgeInsets.only(left: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FDR FLAMENO',
                  maxLines: 11,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
                isFav
                    ? Icon(
                        Icons.favorite_sharp,
                        color: Colors.amber,
                        size: 22,
                      )
                    : Icon(Icons.favorite_sharp, color: Colors.grey)
              ],
            ),
          ),
          Container(
            width: 162,
            padding: EdgeInsets.only(left: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tubless',
                  maxLines: 11,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 2),
                Text(
                  'Ukuran : 80/90-15',
                  maxLines: 11,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 2),
                Text(
                  'Rp.250.000',
                  maxLines: 12,
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 11,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
