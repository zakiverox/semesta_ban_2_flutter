part of 'widgets.dart';

class MotorCard extends StatelessWidget {
  final MotorName motor;
  MotorCard(this.motor);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 99,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            motor.imageURL,
            width: 52,
            height: 42,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              motor.name,
              style: blackTextFont.copyWith(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
