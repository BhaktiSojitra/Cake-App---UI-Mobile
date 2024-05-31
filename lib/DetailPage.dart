import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int counter = 1;
  int cost = 900;
  bool showMore = false;
  //int _selectedButtonIndex = 0;
  int _selectedImageIndex=1;

  void decrementCounter() {
    setState(() {
      if (counter > 1) {
        counter--;
        cost-=100;
      }
    });
  }
  void incrementCounter() {
    setState(() {
      if (counter < 5) {
        counter++;
        cost+=100;
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                "Sorry!",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              content: Text(
                "You can only order up to 5 cakes at a time.",
                style: TextStyle(fontSize: 17),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 15, color: Color(0xFFFF6961)),
                  ),
                ),
              ],
            );
          },
        );
      }
    });
  }
  void _updateSelectedImageIndex(int index){
    setState(() {
      _selectedImageIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
      
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      
            Container(
              width: 400,
              height: 340,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: _selectedImageIndex == 1
                          ? Image.asset(
                        "images/500g.jpg",
                        width: double.infinity,
                        fit: BoxFit.cover)
                      :
                      (_selectedImageIndex == 2 ?
                        Image.asset(
                        "images/cocount_cake.jpg",
                        width: double.infinity,
                        fit: BoxFit.cover)
                      :
                      (_selectedImageIndex == 3 ?
                        Image.asset(
                        "images/2kg.jpg",
                        width: double.infinity,
                        fit: BoxFit.cover)
                      :
                        Image.asset(
                        "images/3kg.png",
                        width: double.infinity,
                        fit: BoxFit.cover)
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: 27,
                        left: 27,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent.withOpacity(0.4),
                          radius: 20,
                        ),
                      ),
                      Positioned(
                        top: 35,
                        left: 33,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: 27,
                        right: 27,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent.withOpacity(0.4),
                          radius: 20,
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 35,
                        child: InkWell(
                          onTap: () {
                            print("jjjj");
                          },
                          child: Icon(
                            Icons.favorite,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
      
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text("Double",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text("\u20B9 $cost",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
      
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Cocount Cake",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
      
            SizedBox(height: 13),
      
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.crop_square_sharp,
                        color: Colors.green,
                        size: 36,
                      ),
                      Icon(Icons.circle, color: Colors.green, size: 11),
                    ],
                  ),
                ),
                Text(" Veg", style: TextStyle(fontSize: 18)),
                SizedBox(width: 57),
                Icon(Icons.star, color: Colors.amber, size: 30),
                Text(" 4.6", style: TextStyle(fontSize: 18)),
                SizedBox(width: 58),
                GestureDetector(
                  onTap: (){
                    decrementCounter();
                  },
                  child: CircleAvatar(
                      child: Text("-",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      backgroundColor: Color(0xFFFF6961),
                      radius: 15,
                    ),
                ),
                Text(' $counter ', style: TextStyle(fontSize: 18)),
                GestureDetector(
                  onTap: (){
                    incrementCounter();
                  },
                  child: CircleAvatar(
                      child: Text("+",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      backgroundColor: Color(0xFFFF6961),
                      radius: 15,
                    ),
                ),
              ],
            ),
      
            SizedBox(height: 14),
      
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
      
            SizedBox(height: 11),
      
            Padding(
              padding: const EdgeInsets.only(left: 20,right:3),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Coconut cake is a delectable dessert that delights the senses with"
                      "its tropical essence. Made with tender layers of moist cake infused with"
                      "the sweet, aromatic flavor of coconut,this confectionery masterpiece is "+
                      (showMore ? "a true culinary delight." : ""),
                  style: TextStyle(fontSize: 17),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showMore = !showMore;
                    });
                  },
                  child: Text(
                    showMore ? "Read Less" : "Read More..",
                    style: TextStyle(fontSize: 17, color: Color(0xFFFF6961)),
                  ),
                ),
              ]),
            ),
      
            SizedBox(height:16),
      
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          _updateSelectedImageIndex(1);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                            side: MaterialStateProperty.all(BorderSide(color:
                            _selectedImageIndex==1 ? Color(0xFFFF6961):Colors.grey.shade400))
                        ),
                        child: Text("500 g",
                            style:
                                TextStyle(color:
                                _selectedImageIndex==1 ? Color(0xFFFF6961):Colors.black,
                                    fontSize: 17))),
      
                    SizedBox(width: 10),
      
                    OutlinedButton(
                        onPressed: () {
                          _updateSelectedImageIndex(2);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                            side: MaterialStateProperty.all(BorderSide(color:
                            _selectedImageIndex==2 ? Color(0xFFFF6961):Colors.grey.shade400))
                        ),
                        child: Text("1 kg",
                            style:
                            TextStyle(color:
                            _selectedImageIndex==2 ? Color(0xFFFF6961):Colors.black,
                                fontSize: 17))),
      
                    SizedBox(width: 10),
      
                    OutlinedButton(
                        onPressed: () {
                          _updateSelectedImageIndex(3);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                            side: MaterialStateProperty.all(BorderSide(color:
                            _selectedImageIndex==3 ? Color(0xFFFF6961):Colors.grey.shade400))
                        ),
                        child: Text("2 kg",
                            style:
                            TextStyle(color:
                            _selectedImageIndex==3 ? Color(0xFFFF6961):Colors.black,
                                fontSize: 17))),
      
                    SizedBox(width: 10),
      
                    OutlinedButton(
                        onPressed: () {
                          _updateSelectedImageIndex(4);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          side: MaterialStateProperty.all(BorderSide(color:
                          _selectedImageIndex==4 ? Color(0xFFFF6961):Colors.grey.shade400)),
                        ),
                        child: Text("3 kg",
                            style:
                            TextStyle(color:
                            _selectedImageIndex==4 ? Color(0xFFFF6961):Colors.black,
                                fontSize: 17))),
                  ],
                ),
              ),
            ),
      
            SizedBox(height:19),
      
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFF6961)),
                      minimumSize: MaterialStateProperty.all(Size(210, 50)),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(9),
                      child: Text("Add to cart",style: TextStyle(color: Colors.white, fontSize: 20)),
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}