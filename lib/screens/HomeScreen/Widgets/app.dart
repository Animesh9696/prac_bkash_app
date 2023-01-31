import 'package:flutter/material.dart';
import 'package:prac_bkash_app/screens/HomeScreen/Widgets/suggestionWidget.dart';
import '../../../utilities/spacingWidget.dart';
import '../../../widgets/CrouselWidget.dart';
import '../../../widgets/ShowBalanceAnimationWidgets.dart';
import '../../QrcodeScreen/app.dart';
import '../../../widgets/DrawerWidget.dart';
import '../../../widgets/bannerWidget.dart';
import 'menusWidget.dart';
import 'moreService.dart';
import 'myBkashWidget.dart';
import 'offerWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: const SafeArea(child: DrawerWidget()),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const QrCodeScreen(),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.fullscreen,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                addVerticalSpace(14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8.0),
                    const Text('Animesh Kumar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0)),
                    addVerticalSpace(6),
                    ShowBalanceAnimationWidget()
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  // Scaffold.of(context).openEndDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 14),
                  child: SizedBox(
                      child: Icon(
                    Icons.account_balance,
                    size: 45,
                  )),
                ),
              );
            }),
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10.0),
                  child: SizedBox(child: Image.asset('assets/images/fly.png')),
                ),
              );
            }),
          ],
        ),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
              margin: addMargin(5),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 240, 233, 233))),
                child: Column(
                  children: [
                    MenusWidget(),
                    MyBkashWidget(),
                    CrouselWidgets(),
                    SuggestionWidget(),
                    OfferWidget(),
                    MoreServices(),
                    BannerWidget(),
                  ],
                ),
              ))),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
