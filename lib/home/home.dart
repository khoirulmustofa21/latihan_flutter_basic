import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import 'package:flutter_svg/flutter_svg.dart';
import 'package:latihan_flutter_basic/components/list_category.dart';
import 'package:latihan_flutter_basic/components/list_products.dart';
import 'package:latihan_flutter_basic/components/text_discover.dart';

// import 'package:latihan_flutter_basic/components/list_category.dart';
// import 'package:latihan_flutter_basic/components/text_discover.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> data = [
    {
      'name': 'Stylish Chair',
      'image': 'assets/images/furniture/img_product_2.png',
      'image-detail': 'assets/images/furniture/img_product_1.png',
      'color': [
        'black38',
        'amber',
        'black12',
        'brown',
      ],
      'price': 170,
      'rating': 4.8
    },
    {
      'name': 'Modern Table',
      'image': 'assets/images/furniture/img_product_3.png',
      'image-detail': 'assets/images/furniture/img_product_1.png',
      'color': [
        'black38',
        'amber',
        'black12',
        'brown',
      ],
      'price': 75,
      'rating': 4.9
    },
    {
      'name': 'Wooden Console dhsjkfhakshfkdhsakfhdskja',
      'image': 'assets/images/furniture/img_product_4.png',
      'image-detail': 'assets/images/furniture/img_product_1.png',
      'color': [
        'black38',
        'amber',
        'black12',
        'brown',
      ],
      'price': 240,
      'rating': 4.7
    },
    {
      'name': 'Brown Armchair',
      'image': 'assets/images/furniture/img_product_5.png',
      'image-detail': 'assets/images/furniture/img_product_1.png',
      'color': [
        'black38',
        'amber',
        'black12',
        'brown',
      ],
      'price': 210,
      'rating': 4.9
    },
  ];

  late int indexSelectItem = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final sizeHeighMD = size.height < 800;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        bottomOpacity: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          const TextDiscover(),
          const ListCategory(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: sizeHeighMD ? 20 : 35, bottom: 17),
              child: const Text(
                'Recommended Furnitures',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
            ),
          ),
          // ListProducts(data),
         ListProducts(data)
        ],
      ),
    );
  }
}
