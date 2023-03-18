import 'package:flutter/material.dart';

class PageDetailProduct extends StatefulWidget {
  final String name;
  final String image;
  final int price;
  final double rating;
  final List color;

  // const PageDetailProduct(this.name,
  //     {super.key});
  const PageDetailProduct(this.name, this.image, this.price, this.rating, this.color,
      {super.key});

  @override
  State<PageDetailProduct> createState() =>
      _PageDetailProductState();
}

class _PageDetailProductState extends State<PageDetailProduct> {
  _PageDetailProductState();


  final dynamic _setColorBorder = Colors.white;

  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    final sizeHeighMD = size.height < 800;

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
                  onTap: (){
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
              width:  sizeHeighMD ? 411 : 393,
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
                        width : sizeHeighMD ? 280 : null,
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
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: widget.rating < 1.0 ? Colors.black12 : Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: widget.rating < 2.0 ? Colors.black12 : Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: widget.rating < 3.0 ? Colors.black12 : Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: widget.rating < 4.0 ? Colors.black12 : Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: widget.rating < 5.0 ? Colors.black12 : Colors.amber,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Choose a color :'),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: _setColorBorder,
                              width: 2,
                            ),
                          ),
                          child: Container(
                            width: 24.27,
                            height: 24.27,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black38),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Select Quality :'),
                      SizedBox()
                    ],
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
