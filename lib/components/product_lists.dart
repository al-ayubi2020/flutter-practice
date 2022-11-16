import 'package:flutter/material.dart';
import '../models/cart.dart'; //IMPORT MODEL CART.DART

class ProductList extends StatelessWidget {
  final List<Cart>
      carts; //DEFINISIKAN VARIABLE CARTS YANG BERFUNGSI UNTUK MENAMPUNG LIST DATA, DIMANA TIPENYA MENGGUNAKAN LIST DAN STRUKTUR DATANYA MERUJUK PADA MODEL Cart

  const ProductList(this.carts,
      {super.key}); //BUAT CONSTRUCTOR UNTUK MEMINTA DATA

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                return GestureDetector(
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text(carts[index].title),
                                content: Text(carts[index].qty),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ));
                    },
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 3.0, color: Colors.black),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    carts[index].title,
                                    style: const TextStyle(fontSize: 24),
                                  ),
                                  Text(
                                    carts[index].qty,
                                    style: const TextStyle(fontSize: 24),
                                  ),
                                  Text(
                                    carts[index].harga,
                                    style: const TextStyle(fontSize: 24),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )));
              },
              itemCount: carts
                  .length, //JUMLAH ITEMNYA BERDASARKAN JUMLAH DATA YANG ADA DI DALAM CARTS
            ),
    );
  }
}
