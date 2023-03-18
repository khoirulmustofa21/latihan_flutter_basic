import 'package:flutter/material.dart';

class PageDetailProduct extends StatefulWidget {
  final String name;
  final String image;
  final int price;
  final double rating;
  final List color;

  late int quality = 0;
  List<Color> warnaBulatan = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange
  ];

  bool onTapColor = false;

  // const PageDetailProduct(this.name,
  //     {super.key});
  PageDetailProduct(this.name, this.image, this.price, this.rating, this.color,
      {super.key});

  @override
  State<PageDetailProduct> createState() => _PageDetailProductState();
}

class _PageDetailProductState extends State<PageDetailProduct> {
  _PageDetailProductState();

  late dynamic _setColorBorder = Colors.white;

  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 860,
            ),
          ),
          Positioned(
            child: Container(
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 5,
            right: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 110,
                  height: 5,
                  child: null,
                ),
                const Text(
                  'Detail',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(
                  width: 60,
                  height: 5,
                  child: null,
                ),
                GestureDetector(
                  onTap: () {
                    print('ini adalah tombol favorite');
                  },
                  child: SizedBox(
                    width: 34,
                    height: 34,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 34,
                            height: 34,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 5,
                          top: 7,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print('ini adalah tombol share');
                  },
                  icon: const Icon(Icons.share_outlined),
                ),
              ],
            ),
          ),
          Positioned(
            top: 520,
            child: Container(
              height: 400,
              // width: sizeHeighMD ? 411 : 393,
              width: 410,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 280,
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      Text(
                        '\$ ${widget.price}',
                        style: const TextStyle(
                            fontSize: 26, color: Colors.black38),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: widget.rating < 1.0
                              ? Colors.black12
                              : Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: widget.rating < 2.0
                              ? Colors.black12
                              : Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: widget.rating < 3.0
                              ? Colors.black12
                              : Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: widget.rating < 4.0
                              ? Colors.black12
                              : Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: widget.rating < 5.0
                              ? Colors.black12
                              : Colors.amber,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Choose a color :'),
                        SizedBox(
                          width: screenWidth * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: List.generate(
                              widget.warnaBulatan.length,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    for (int i = 0; i < widget.warnaBulatan.length; i++) {
                                      if (i == index) {
                                        widget.onTapColor = true;
                                        _setColorBorder = widget.warnaBulatan[i];
                                      } else {
                                        widget.onTapColor = false;
                                      }
                                    }
                                  });
                                },
                                child: Container(
                                  width: 21.27,
                                  height: 21.27,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: widget.warnaBulatan[index],
                                    border: widget.onTapColor && _setColorBorder == widget.warnaBulatan[index] ?
                                    Border.all(color: Colors.black, width: 2.0) : null,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Select Quality :'),
                      Container(
                        width: 102,
                        height: 32,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.quality <= 0 ? 0 : widget.quality--;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.5,
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  // size: 18,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(0XFFE7E7E7),
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.black12,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  widget.quality.toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.quality++;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  border: Border.all(
                                    width: 0.5,
                                    color: Colors.black12,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  // size: 18,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 60,
                    width: 386,
                    child: Text(
                      'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
                      style: TextStyle(
                        height: 1.3,
                        color: Color(
                          0xFFADADAD,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFADADAD),
                      minimumSize: Size(MediaQuery.of(context).size.width, 40),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                    ),
                    child: const Text('ADD TO CARD'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
// padding: const EdgeInsets.all(2),
// width: 29,
// height: 29,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// border: Border.all(
// color: _setColorBorder,
// width: 2,
// ),
// ),
// child: Container(
// width: 21.27,
// height: 21.27,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: widget.warnaBulatan[index],),
// ),
// ),
