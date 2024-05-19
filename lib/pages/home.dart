import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badges;
import 'package:nutriscan/pages/profil.dart';
import 'package:nutriscan/pages/scan.dart';
import 'package:nutriscan/pages/track.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [const TrackPage(), const ScanPage(), const ProfilPage()];
  int currentPageIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            children: [
              Image.asset(
                'assets/logo.png', 
                width: 100, 
              ),
            ],
          ),
          backgroundColor: Theme.of(context).colorScheme.primary, 
          elevation: 0.0,
        ),
      
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
            label: "Home",
            activeIcon: Icon(IconlyBold.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.scan),
            label: "Scan",
            activeIcon: Icon(IconlyBold.scan),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.profile),
            label: "Profil",
            activeIcon: Icon(IconlyBold.profile),
          ),
        ],
      ),
    );
  }
}
