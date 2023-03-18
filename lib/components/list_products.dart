
import 'package:flutter/material.dart';

import '../page/page_detail_product.dart';

class ListProducts extends StatefulWidget {
   const ListProducts(this.data,{Key? key}) : super(key: key);

  final  List data;

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final sizeHeighMD = size.height < 800;
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio:  sizeHeighMD ? 100/115 : 100 / 130,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.only(right: 10, left: 10),
        children: [
          ...List.generate(
            widget.data.length,
                (index) {
              return  Container(
                width: 185,
                height: 120,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageDetailProduct(widget.data[index]['name'],widget.data[index]['image-detail'],widget.data[index]['price'],widget.data[index]['rating'],widget.data[index]['color']),
                              // builder: (context) => PageDetailProduct(widget.data[index]['name']),
                            ),
                          );
                          print('ini adalah card');
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(widget.data[index]['image']),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                              ),
                              height: sizeHeighMD ? 140 : 160,
                              width: 185,
                            ),
                            Container(
                              padding: const EdgeInsets.all(15),
                              width: 185,
                              height: 75.7,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      widget.data[index]['name'],
                                      overflow: TextOverflow.clip,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: sizeHeighMD ? 5 : 10,
                                    width: null,
                                    child: null,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$ ${widget.data[index]['price']}',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black38
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.amber,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                            height: null,
                                            child: null,
                                          ),
                                          Text('${widget.data[index]['rating']}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black38
                                            ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: GestureDetector(
                        onTap: () {
                          print('ini adalah favorite');
                        },
                        child: Container(
                          height: 34,
                          width: 34,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// class _ListProductsState extends State<ListProducts> {
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     final sizeHeighMD = size.height < 2400;
//     return Expanded(
//       child: GridView.count(
//         crossAxisCount: 2,
//         childAspectRatio: 100 / 130,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         padding: const EdgeInsets.only(right: 10, left: 10),
//         children: [
//           ...List.generate(
//             widget.data.length,
//                 (index) {
//               return  Container(
//                 // padding: const EdgeInsets.only(left: 10, right: 10),
//                 width: 185,
//                 height: 120,
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20),
//                   ),
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => PageDetailProduct(widget.data[index]['name'],widget.data[index]['image-detail'],widget.data[index]['price'],widget.data[index]['rating'],widget.data[index]['color']),
//                               // builder: (context) => PageDetailProduct(widget.data[index]['name']),
//                             ),
//                           );
//                           print('ini adalah card');
//                           print('ini adalah data dengan index ${widget.data[1]['name']} :  $index');
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage(widget.data[index]['image']),
//                                   fit: BoxFit.cover,
//                                 ),
//                                 borderRadius: const BorderRadius.only(
//                                   topRight: Radius.circular(20),
//                                   topLeft: Radius.circular(20),
//                                 ),
//                               ),
//                               height: 160,
//                               width: 185,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.all(15),
//                               width: 185,
//                               height: 75.7,
//                               decoration: const BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(20),
//                                   bottomLeft: Radius.circular(20),
//                                 ),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Align(
//                                     alignment: Alignment.topLeft,
//                                     child: Text(
//                                       widget.data[index]['name'],
//                                       overflow: TextOverflow.clip,
//                                       maxLines: 1,
//                                       style: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 1,
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 10,
//                                     width: null,
//                                     child: null,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         '\$ ${widget.data[index]['price']}',
//                                         style: const TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w500,
//                                             color: Colors.black38
//                                         ),
//                                       ),
//                                       Row(
//                                         children: [
//                                           const Icon(
//                                             Icons.star,
//                                             size: 15,
//                                             color: Colors.amber,
//                                           ),
//                                           const SizedBox(
//                                             width: 8,
//                                             height: null,
//                                             child: null,
//                                           ),
//                                           Text('${widget.data[index]['rating']}',
//                                             style: const TextStyle(
//                                                 fontWeight: FontWeight.w500,
//                                                 color: Colors.black38
//                                             ),),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 10,
//                       left: 10,
//                       child: GestureDetector(
//                         onTap: () {
//                           print('ini adalah favorite');
//                         },
//                         child: Container(
//                           height: 34,
//                           width: 34,
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             borderRadius:
//                             BorderRadius.all(Radius.circular(10)),
//                           ),
//                           child: const Icon(
//                             Icons.favorite_border,
//                             color: Colors.red,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
