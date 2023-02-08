import 'package:flutter/material.dart';
import '../../../utilities/constants.dart';
import '../../../utilities/spacingWidget.dart';
import '../../../widgets/CrouselWidget.dart';
import '../../../widgets/HorizontalBigCardDesignidget.dart';
import '../../../widgets/ShowBalanceAnimationWidgets.dart';
import '../../../widgets/HorizontalCardDesignidget.dart';
import '../../QrcodeScreen/QrcodeScreen.dart';
import '../../../widgets/DrawerWidget.dart';
import '../../../widgets/BannerWidget.dart';
import 'Menu.dart';
import 'MoreServices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      endDrawer: const SafeArea(child: DrawerWidget()),
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBarWidget(),
      ),
      body: const BodyWidget(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const CircleAvatar(
                      //handle image exception
                      backgroundImage: NetworkImage(avatarImage),
                    ),
                    const Icon(
                      Icons.fullscreen,
                      size: 80,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            // addVerticalSpace(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 13),
                const Text('Animesh Kumar',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, letterSpacing: 1.0)),
                addVerticalSpace(3),
                const ShowBalanceAnimationWidget()
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
            child: const Padding(
              padding: EdgeInsets.only(top: 10, right: 14),
              child: SizedBox(
                  child: Icon(
                Icons.account_balance,
                size: 40,
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
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
            padding: addMargin(3),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 233, 233))),
              child: Column(
                children: [
                  const Menu(),
                  HorizontalCardDesignidget(
                    topic: "My bkash",
                    modelList: mykashsampleList,
                  ),
                  const CrouselWidgets(),
                  HorizontalCardDesignidget(
                    topic: "Suggestions",
                    modelList: suggestionsampleList,
                  ),
                  HorizontalBigCardDesignidget(
                    topic: "Offers",
                    modelList: offersampleList,
                  ),
                  const MoreServices(),
                  const BannerWidget(
                    imageUrl: bannerImage,
                  ),
                ],
              ),
            )));
  }
}
