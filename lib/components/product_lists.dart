import 'package:flutter/material.dart';
import '../models/cart.dart'; //IMPORT MODEL CART.DART

class ProductList extends StatelessWidget {
  final List<Cart>
      carts; //DEFINISIKAN VARIABLE CARTS YANG BERFUNGSI UNTUK MENAMPUNG LIST DATA, DIMANA TIPENYA MENGGUNAKAN LIST DAN STRUKTUR DATANYA MERUJUK PADA MODEL Cart

  ProductList(this.carts); //BUAT CONSTRUCTOR UNTUK MEMINTA DATA

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      //APABILA CARTS KOSONG
      child: carts.isEmpty
          ? Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Text("No Transaction Data"),
              ],
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                //DIDALAM BUILDER INI WIDGET AKAN DILOOPING BERDASARKAN JUMLAH DATA, DAN INDEX ARRAYNYA AKAN DIUPDATE KE DALAM VARIABLE INDEX
                return Card(
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            carts[index].title,
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            carts[index].qty,
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            carts[index].harga,
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: carts
                  .length, //JUMLAH ITEMNYA BERDASARKAN JUMLAH DATA YANG ADA DI DALAM CARTS
            ),
    );
  }
}
