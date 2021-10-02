part of 'page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool isemailvalid = false;
  bool ispasswordvalid = false;
  bool issigin = false;

  @override
  Widget build(BuildContext context) {
    context
        .read<ThemeBloc>()
        .add(ChangeTheme(ThemeData().copyWith(primaryColor: maincolor)));
    return WillPopScope(
      onWillPop: () {
        context.read<PageBloc>().add(GoToSpashEvent());
        return;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 70,
                  child: Image.asset("assets/logo.png"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 70, bottom: 40),
                  child: Text(
                    "Selamat Datang Di Semesta Ban,\n Daftar Dan Nikmati keuntuinganya",
                    style: blackTextFont.copyWith(fontSize: 17),
                  ),
                ),
                TextField(
                    onChanged: (text) {
                      setState(() {
                        isemailvalid = EmailValidator.validate(text);
                      });
                    },
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Email Address",
                        hintText: "Email Address")),
                SizedBox(
                  height: 16,
                ),
                TextField(
                    onChanged: (text) {
                      setState(() {
                        ispasswordvalid = text.length >= 6;
                      });
                    },
                    controller: passwordcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Password",
                        hintText: "Password")),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Lupa Password? ",
                      style: greyTextFont.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "Get Now",
                      style: orangeTextFont.copyWith(fontSize: 12),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: 70,
                    height: 70,
                    margin: EdgeInsets.only(top: 40, bottom: 30),
                    child: issigin
                        ? SpinKitFadingCircle(
                            color: maincolor,
                          )
                        : FloatingActionButton(
                            //menghilangkan bayangan
                            elevation: 0,
                            child: Icon(Icons.arrow_forward_ios,
                                color: isemailvalid && ispasswordvalid
                                    ? Colors.white
                                    : Colors.grey[850]),
                            backgroundColor: isemailvalid && ispasswordvalid
                                ? maincolor
                                : Colors.grey[300],
                            onPressed: isemailvalid && ispasswordvalid
                                ? () async {
                                    setState(() {
                                      issigin = true;
                                    });

                                    SignInResult rs = await AuthServices.sigIn(
                                        emailcontroller.text,
                                        passwordcontroller.text);
                                    if (rs.user == null) {
                                      setState(() {
                                        issigin = false;
                                      });
                                      Flushbar(
                                              duration: Duration(seconds: 6),
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                              backgroundColor: Colors.orange,
                                              message: rs.message)
                                          .show(context);
                                    }
                                  }
                                : null,
                          ),
                  ),
                ),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sudah Punya Acoount? ",
                      style: greyTextFont.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "Sign Up",
                      style: orangeTextFont.copyWith(fontSize: 12),
                    )
                  ],
                )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
