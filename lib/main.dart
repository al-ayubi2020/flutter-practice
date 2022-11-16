import 'package:flutter/material.dart';
import 'package:local_flutter/components/drawer.dart';
import 'package:local_flutter/models/cart.dart';
import './components/product_lists.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Cart> _carts = [
    //SEBAGAI PERMULAAN, KITA TAMBAHKAN DUA BUAH DATA DUMMY
    Cart(
        id: 'DW1',
        title: 'Registrasi Akademik',
        harga: '19 Mei 2017 - 01 Jun 2017',
        qty: '(Universitas Indonesia)'),
    Cart(
        id: 'DW2',
        title: 'Registrasi Akademik',
        harga: '19 Mei 2017 - 01 Jun 2017',
        qty: '(Universitas Indonesia)'),
    Cart(
        id: 'DW3',
        title: 'Registrasi Akademik',
        harga: '19 Mei 2017 - 01 Jun 2017',
        qty: '(Universitas Indonesia)'),
    Cart(
        id: 'DW4',
        title: 'Registrasi Akademik',
        harga: '19 Mei 2017 - 01 Jun 2017',
        qty: '(Universitas Indonesia)'),
    Cart(
        id: 'DW5',
        title: 'Registrasi Akademik',
        harga: '19 Mei 2017 - 01 Jun 2017',
        qty: '(Universitas Indonesia)'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.black,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.yellow,
            bottom: const TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "SIAK-NG",
                ),
                Tab(text: "SCELE"),
                Tab(text: "Tanggal Penting"),
              ],
            ),
            title: const Text('News Feed',
                style: TextStyle(fontSize: 24, color: Colors.black)),
          ),
          drawer: const DrawerCustom(),
          body: TabBarView(
            children: [
              const Icon(Icons.directions_car),
              const Icon(Icons.directions_transit),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ProductList(_carts), //TAMBAHKAN BAGIAN INI
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
