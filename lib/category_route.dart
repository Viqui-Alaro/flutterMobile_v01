import 'package:flutter/material.dart';
import 'package:flutter_mobile_uno/category.dart';
import 'package:flutter_mobile_uno/unit.dart';


final _backgroundColor = Colors.blueGrey;

class CategoryRoute extends StatelessWidget {

  const CategoryRoute();

  static const _categoryNames = <String>[
    'Pantalones',
    'Chamarras',
    'Gorras',
    'Poleras',
    'Zapatos',
    'Vestidos',
    'Camisas',
    'Deportivos',
  ];

  static const _baseColors = <Color>[
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
  ];


  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unidad $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.add_shopping_cart,
        units: _retrieveUnitList(_categoryNames[i]),
      ));
    }

    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Catalogo Primavera-Verano',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}