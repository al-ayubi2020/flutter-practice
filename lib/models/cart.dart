import 'package:flutter/foundation.dart';

class Cart {
  final String id;
  final String title;
  final String harga;
  final String qty;

  //BUAT CONSTRUCTOR DIMANA SECARA DEFAULT CLASS INI AKAN MEMINTA DATA TERSEBUT
  Cart(
      {required this.id,
      required this.title,
      required this.harga,
      required this.qty});
}
