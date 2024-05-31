import 'package:flutter/material.dart';

class CupcakesItems extends StatefulWidget {
  const CupcakesItems({super.key});

  @override
  State<CupcakesItems> createState() => _CupcakesItemsState();
}

class _CupcakesItemsState extends State<CupcakesItems> {
  bool _favoriteindex=false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
              width: 227,
              height: 220,
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "images/Cupcakes_Photos/Chocolate-Cupcakes.jpg",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  Positioned(
                    bottom: 5,
                    left: 7, // Aligns the content to the left
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Aligns the text to the start (left)
                      children: [
                        Text(
                          "Chocolate",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "Cupcake",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.star, color: Colors.white),
                        Text(" 4.6",
                            style:
                            TextStyle(color: Colors.white, fontSize: 19)),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent.withOpacity(0.4),
                      radius: 20,
                    ),
                  ),
                  Positioned(
                      top: 17,
                      right: 16,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            _favoriteindex = !_favoriteindex;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: _favoriteindex?Colors.redAccent:Colors.white,
                          size: 25,
                        ),
                      )),
                ],
              ),
            ),
          ),

          SizedBox(width: 13),

          Container(
            width: 227,
            height: 220,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "images/Cupcakes_Photos/Mango-Cupcakes.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 7, // Aligns the content to the left
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Aligns the text to the start (left)
                    children: [
                      Text(
                        "Mango",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Cupcake",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.star, color: Colors.white),
                      Text(" 4.7",
                          style: TextStyle(color: Colors.white, fontSize: 19)),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent.withOpacity(0.4),
                    radius: 20,
                  ),
                ),
                Positioned(
                  top: 17,
                  right: 16,
                  child: InkWell(
                    onTap: (){
                      setState(() {

                      });
                    },
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 13),

          Container(
            width: 227,
            height: 220,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "images/Cupcakes_Photos/Red-Velvet-Cupcakes.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 7, // Aligns the content to the left
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Aligns the text to the start (left)
                    children: [
                      Text(
                        "Red Velvet",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Cupcake",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.star, color: Colors.white),
                      Text(" 4.8",
                          style: TextStyle(color: Colors.white, fontSize: 19)),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent.withOpacity(0.4),
                    radius: 20,
                  ),
                ),
                Positioned(
                    top: 17,
                    right: 16,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 25,
                    )),
              ],
            ),
          ),

          SizedBox(width: 13),

          Container(
            width: 227,
            height: 220,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "images/Cupcakes_Photos/Strawberry-Cupcakes.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 7, // Aligns the content to the left
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Aligns the text to the start (left)
                    children: [
                      Text(
                        "Strawberry",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Cupcake",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.star, color: Colors.white),
                      Text(" 4.9",
                          style: TextStyle(color: Colors.white, fontSize: 19)),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent.withOpacity(0.4),
                    radius: 20,
                  ),
                ),
                Positioned(
                    top: 17,
                    right: 16,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 25,
                    )),
              ],
            ),
          ),

          SizedBox(width: 13),

          Container(
            width: 227,
            height: 220,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "images/Cupcakes_Photos/Vanilla-Cupcake.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 7, // Aligns the content to the left
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Aligns the text to the start (left)
                    children: [
                      Text(
                        "Vanilla",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Cupcake",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.star, color: Colors.white),
                      Text(" 5.0",
                          style: TextStyle(color: Colors.white, fontSize: 19)),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent.withOpacity(0.4),
                    radius: 20,
                  ),
                ),
                Positioned(
                    top: 17,
                    right: 16,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 25,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}