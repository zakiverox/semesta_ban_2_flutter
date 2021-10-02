// ignore_for_file: deprecated_member_use

part of 'page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  int bottomNavBarIndex;
  PageController pageController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    bottomNavBarIndex = 0;
    pageController = PageController(initialPage: bottomNavBarIndex);
    _tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: maincolor,
        ),
        SafeArea(
          bottom: false,
          child: Container(
            color: Colors.grey[50],
          ),
        ),
        PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              bottomNavBarIndex = index;
            });
          },
          children: [
            Stack(
              children: [
                ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(height: 65),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      height: 129,
                      color: Colors.amberAccent,
                      child: Text("Banner"),
                    ),
                    Container(
                        color: Colors.white,
                        height: 100,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "Recomended ",
                                    style: blackTextFont.copyWith(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Lihat semua >> ",
                                    style:
                                        orangeTextFont.copyWith(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    MotorCard(
                                      MotorName(
                                          id: 1,
                                          name: "Honda \n PCX 160",
                                          imageURL: 'assets/vario2.png'),
                                    ),
                                    MotorCard(
                                      MotorName(
                                          id: 2,
                                          name: "Yamaha \n Mio 125",
                                          imageURL: 'assets/vario3.png'),
                                    ),
                                    MotorCard(
                                      MotorName(
                                          id: 3,
                                          name: "Kawasaki \n KLX 125",
                                          imageURL: 'assets/vario4.png'),
                                    ),
                                    MotorCard(
                                      MotorName(
                                          id: 4,
                                          name: "Suzuki \n Spacy 123",
                                          imageURL: 'assets/vario 1.png'),
                                    ),
                                    MotorCard(
                                      MotorName(
                                          id: 5,
                                          name: "Honda \n Vario 125",
                                          imageURL: 'assets/vario2.png'),
                                    ),
                                  ],
                                ))
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        color: Colors.white,
                        height: 100,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "Merek Motor Kamu",
                                    style: blackTextFont.copyWith(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Lihat semua >> ",
                                    style:
                                        orangeTextFont.copyWith(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    MotorCard(
                                      MotorName(
                                          id: 1,
                                          name: "Honda",
                                          imageURL: 'assets/honda.png'),
                                    ),
                                    MotorCard(
                                      MotorName(
                                          id: 2,
                                          name: "Yamaha",
                                          imageURL: 'assets/yamaha.png'),
                                    ),
                                    MotorCard(
                                      MotorName(
                                          id: 3,
                                          name: "Kawasaki",
                                          imageURL: 'assets/kawasaki.png'),
                                    ),
                                    MotorCard(
                                      MotorName(
                                          id: 4,
                                          name: "Suzuki ",
                                          imageURL: 'assets/suzuki.png'),
                                    ),
                                    MotorCard(
                                      MotorName(
                                          id: 5,
                                          name: "Vespa",
                                          imageURL: 'assets/vespa.png'),
                                    ),
                                  ],
                                ))
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                          color: Colors.white,
                          height: 100,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Pilih Merek Ban",
                                    style: blackTextFont.copyWith(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Lihat semua >> ",
                                    style:
                                        orangeTextFont.copyWith(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      MotorCard(
                                        MotorName(
                                            id: 1,
                                            name: "Corsa",
                                            imageURL: 'assets/corsa.png'),
                                      ),
                                      MotorCard(
                                        MotorName(
                                            id: 2,
                                            name: "IRC",
                                            imageURL: 'assets/irc.png'),
                                      ),
                                      MotorCard(
                                        MotorName(
                                            id: 3,
                                            name: "MAXXIS",
                                            imageURL: 'assets/maxxis.png'),
                                      ),
                                      MotorCard(
                                        MotorName(
                                            id: 4,
                                            name: "Swallow ",
                                            imageURL: 'assets/swalow.png'),
                                      ),
                                      MotorCard(
                                        MotorName(
                                            id: 5,
                                            name: "Michelin",
                                            imageURL: 'assets/michelin.png'),
                                      ),
                                    ],
                                  ))
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: Row(
                        children: [
                          Text('Ban Terbaru',
                              style: blackTextFont.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          SizedBox(
                              width:
                                  MediaQuery.of(context).size.width / 2 + 10),
                          Text('Lihat Semuah',
                              style: orangeTextFont.copyWith(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 600,
                        color: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: Expanded(
                            child: ListView.builder(
                                itemCount: (6.toDouble() / 2).toInt(),
                                itemBuilder: (_, i) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      widgetCard(),
                                      SizedBox(
                                        width: 19,
                                      ),
                                      widgetCard(),
                                    ],
                                  );
                                })))
                  ],
                ),
              ],
            ),
            Center(
              child: Text("page explorer"),
            ),
            Center(
              child: Text("page account"),
            )
          ],
        ),
        SearchPage(),
        customNavBar(),
      ]),
    );
  }

  Widget customNavBar() => Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: maincolor,
              unselectedItemColor: Colors.grey[400],
              currentIndex: bottomNavBarIndex,
              onTap: (index) {
                setState(() {
                  bottomNavBarIndex = index;
                  pageController.jumpToPage(index);
                  if (index == 2) {
                    AuthServices.signOut();
                  }
                });
              },
              items: [
                BottomNavigationBarItem(
                    title: Text("Home",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Container(
                      margin: EdgeInsets.only(bottom: 6),
                      height: 20,
                      child: Icon(
                        Icons.home,
                        color:
                            (bottomNavBarIndex == 0) ? maincolor : Colors.grey,
                      ),
                    )),
                BottomNavigationBarItem(
                    title: Text("Explorer",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Container(
                      margin: EdgeInsets.only(bottom: 6),
                      height: 20,
                      child: Icon(
                        Icons.explore,
                        color:
                            (bottomNavBarIndex == 1) ? maincolor : Colors.grey,
                      ),
                    )),
                BottomNavigationBarItem(
                    title: Text("Akun",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Container(
                      margin: EdgeInsets.only(bottom: 6),
                      height: 20,
                      child: Icon(
                        Icons.account_box,
                        color:
                            (bottomNavBarIndex == 2) ? maincolor : Colors.grey,
                      ),
                    ))
              ]),
        ),
      ));
}
