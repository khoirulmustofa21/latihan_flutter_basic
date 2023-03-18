import 'package:flutter/material.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({super.key});

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  final List<String> categories = [
    'All',
    'Living Room',
    'Bedroom',
    'Dining Room',
    'kitchen'
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    // int selectIndex = 0;
    return SizedBox(
      height: 32,
      child: Container(
        margin: const EdgeInsets.only(left: 10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            categories.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectIndex = index;
                    print(selectIndex);
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(microseconds: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: selectIndex == index ? Colors.grey : Colors.white10,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 9,
                    horizontal: 18,
                  ),
                  // margin: const EdgeInsets.symmetric(horizontal: 1),
                  child: Text(
                    categories[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
