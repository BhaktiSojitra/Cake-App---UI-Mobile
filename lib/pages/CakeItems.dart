import 'package:flutter/material.dart';

class CakeItems extends StatefulWidget {
  const CakeItems({super.key});

  @override
  State<CakeItems> createState() => _CakeItemsState();
}

class _CakeItemsState extends State<CakeItems> {
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
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "screen3");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "images/500g.jpg",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
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
                          "Double",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "Cocount Cake",
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
                    "images/chocolate_cake.jpg",
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
                        "Double",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Chocolate Cake",
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
                    "images/black_forest_cake.jfif",
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
                        "Black",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Forest Cake",
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
                    "images/Choco-Berry-Drip-Cake.jpg",
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
                        "Choco Berry",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Drip Cake",
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
                    "images/cream-cake.jpeg",
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
                        "Fresh",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Cream Cake",
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