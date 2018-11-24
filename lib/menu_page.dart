import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  static String tag = 'menu-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/ic_logo_intrusa.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bienvenidos a la Intrusa',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'La intrusa es una aplicación donde podra comprar ropa online usted podra encontrar nuesto catalogo de venta de nuestros articulos como son camisetas, gorras, pantalones, poleras, chamarras, jeans y mucha variedad que vera en nuestra colleción primavera verano.',
        style: TextStyle(fontSize: 16.0, color: Colors.black45),
      ),
    );



    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white70,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
