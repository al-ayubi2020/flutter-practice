import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // Menambahkan clickable menu
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          ),
          // ignore: prefer_const_constructors
          ListTile(
            title: const Text('Counter'),
            // onTap: () {
            //   // Route menu ke halaman utama
            //   Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) =>
            //             const MyHomePage(title: 'Flutter Demo Home Page')),
            //   );
            // },
          ),
          // ignore: prefer_const_constructors
          ListTile(
            title: const Text('Tambah Budget'),
            // onTap: () {
            //   // Route menu ke halaman form
            //   Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => const TambahBudgetPage()),
            //   );
            // },
          ),
          // ignore: prefer_const_constructors
          ListTile(
            title: const Text('Daftar Budget'),
            // onTap: () {
            //   // Route menu ke halaman form
            //   Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(builder: (context) => const DataBudgetPage()),
            //   );
            // },
          ),
        ],
      ),
    );
  }
}
