import 'package:flutter/material.dart';
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
  int _counter = 0;

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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, // Set this height
        flexibleSpace: Container(
          padding: const EdgeInsets.fromLTRB(8, 40, 8, 20),
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  // ignore: prefer_const_constructors
                  const Text(
                    'News Feed',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'SIAK-NG',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'SCELE',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'Tanggal Penting',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ProductList(_carts), //TAMBAHKAN BAGIAN INI
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
