import 'package:cake_app_ui_mobile/pages/CupcakesItems.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'pages/CakeItems.dart';
import 'pages/PasteriesItems.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  void showOrderAgainConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Order Again",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
          content: Text("Are you sure you want to place the order again?",
              style: TextStyle(fontSize: 17)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Cancel",
                  style: TextStyle(fontSize: 15, color: Color(0xFFFF6961))),
            ),
            TextButton(
              onPressed: () {
                print("Order again called");
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Order Again",
                  style: TextStyle(fontSize: 15, color: Color(0xFFFF6961))),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
      
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                  child:
                  Icon(Icons.location_on, color: Color(0xFFFF6961), size: 31),
                ),
                // Wrap the Text widget with a Stack
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 250,
                        child: TextFormField(
                          style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                          decoration: InputDecoration(
                            hintText: "Home - Silver Valley Mumbai",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 33),
                      child: Text("--------------------------------------------"),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 7, 0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/CircleAvatar.jpg"),
                    radius: 20,
                  ),
                )
              ],
            ),
      
            //Search widget
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 11, 0, 11),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Container(
                      height: 49,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Icon(Icons.search,
                                color: Color(0xFFFF6961), size: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              width: 250,
                              child: TextFormField(
                                style: TextStyle(fontSize: 18),
                                decoration: InputDecoration(
                                  hintText: "Search here",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFF6961),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Icon(Icons.filter_list, color: Colors.white, size: 29),
                    ),
                  ),
                ],
              ),
            ),
      
            TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Color(0xFFFF6961),
              indicatorColor: Color(0xFFFF6961),
              tabAlignment: TabAlignment.start,
              tabs: [
                Tab(child: Text("Cakes", style: TextStyle(fontSize: 17))),
                Tab(child: Text("Pasteries", style: TextStyle(fontSize: 17))),
                Tab(child: Text("Cupcakes", style: TextStyle(fontSize: 17))),
                Tab(child: Text("Tart", style: TextStyle(fontSize: 17))),
                Tab(child: Text("Waffels", style: TextStyle(fontSize: 17))),
                Tab(child: Text("Dount", style: TextStyle(fontSize: 17))),
              ],
            ),
      
            SizedBox(height: 19),
      
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  "Recommended",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: GestureDetector(
                  onTap: () {
                    print("GestureDetector called");
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      
            Container(
              height: 260,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    CakeItems(),
                    PasteriesItems(),
                    CupcakesItems(),
                    Text(""),
                    Text(""),
                    Text(""),
                  ]),
            ),
      
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showOrderAgainConfirmationDialog();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Order again",
                        style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    print("View Histroy Called");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text("view histroy",
                        style: TextStyle(fontSize: 17, color: Color(0xFFFF6961))),
                  ),
                ),
              ],
            ),
      
            SizedBox(height: 23),
      
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Container(
                      width: 335,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400,width: 1.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "images/chocolate-caramel-cupcake.jpg",
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 30, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chocolate Caramel Cupcake",
                                    style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.bold)),
                                SizedBox(height: 4),
                                Text("3 pieces",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey.shade700)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width:11),
                    Container(
                      width: 335,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400,width: 1.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "images/Coconut-Cream-Pie-Waffles.jpg",
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 30, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Coconut Cream Pie Waffles",
                                    style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.bold)),
                                SizedBox(height: 4),
                                Text("4 pieces",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey.shade700)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width:11),
                    Container(
                      width: 270,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400,width: 1.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "images/black-forest-pastry.png",
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(6, 30, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Black Forest Pastry",
                                    style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.bold)),
                                SizedBox(height: 4),
                                Text("2 pieces",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey.shade700)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: GNav(
                gap: 9, // the tab button gap between icon and text
                activeColor: Color(0xFFFF6961), // selected icon and text color
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // navigation bar padding
                tabBorderRadius: 15,
                tabActiveBorder: Border.all(color: Colors.grey, width: 1.5), // tab button border
                tabBorder: Border.all(color: Colors.grey, width: 1.5), // tab button border
                duration: Duration(milliseconds: 500), // tab animation duration
                color: Colors.black, // unselected icon color
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                    textStyle: TextStyle(fontSize: 16, color: Color(0xFFFF6961)),
                  ),
                  GButton(
                    icon: LineIcons.heart,
                    text: 'Likes',
                    textStyle: TextStyle(fontSize: 16, color: Color(0xFFFF6961)),
                  ),
                  GButton(
                    icon: LineIcons.shoppingCart,
                    text: 'Cart',
                    textStyle: TextStyle(fontSize: 16, color: Color(0xFFFF6961)),
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                    textStyle: TextStyle(fontSize: 16, color: Color(0xFFFF6961)),
                  )
                ],
                selectedIndex: selectedIndex,
                // define selectedIndex
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}