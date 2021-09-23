part of 'widgets.dart';

class RecoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 160,
            width: 162,
            child: Stack(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/yamaha.png',
                    width: 160,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
