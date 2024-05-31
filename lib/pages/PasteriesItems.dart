import 'package:flutter/material.dart';

class PasteriesItems extends StatefulWidget {
  const PasteriesItems({super.key});

  @override
  State<PasteriesItems> createState() => _PasteriesItemsState();
}

class _PasteriesItemsState extends State<PasteriesItems> {
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
                        "images/Pasteries_Photos/black-forest-pastry.png",
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
                          "Forest Pastry",
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
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 25,
                      )),
                ],
              ),
            ),
          ),

          SizedBox(width: 13),

          Container(
            width: 226,
            height: 220,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "images/Pasteries_Photos/Chocolate-Truffle-Pastry.jpg",
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
                        "Truffle Pastry",
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 25,
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
                    "images/Pasteries_Photos/Fresh-Strawberry-Pastry.jpg",
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
                        "Strawberry Cake",
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
                    "images/Pasteries_Photos/Pine-apple-pastry.jpg",
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
                        "Pine",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Apple Pastry",
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
                    "images/Pasteries_Photos/Eggless-Opium-Pastry.jpg",
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
                        "Eggless",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Opium Pastry",
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
