import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nutriscan/pages/setting.dart';
import 'package:nutriscan/pages/riwayatkesehatan.dart';
import 'package:nutriscan/pages/riwayatscan.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/profil.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Tehyung@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            ProfileMenuItem(
              icon: IconlyLight.setting,
              text: 'Akun & Pengaturan',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingPage()),
                );
              },
            ),
            ProfileMenuItem(
              icon: IconlyLight.activity,
              text: 'Riwayat kesehatan',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RiwayatKesehatanPage()),
                );
              },
            ),
            ProfileMenuItem(
              icon: IconlyLight.scan,
              text: 'Riwayat Scan',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RiwayatScanPage()),
                );
              },
            ),
            ProfileMenuItem(
              icon: IconlyLight.message,
              text: 'Kontak',
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: IconlyLight.infoSquare,
              text: 'Tentang Kami',
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: IconlyLight.logout,
              text: 'Keluar',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  ProfileMenuItem({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.orange),
      title: Text(text),
      onTap: () => onTap(),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Pengguna',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ProfilPage(),
    );
  }
}
