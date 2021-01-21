import 'package:flutter/material.dart';
import 'package:pet_UI/configuration.dart';
import 'package:pet_UI/screens/screen2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 300),
      color: Colors.grey[300],
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 210;
                              yOffset = 150;
                              scaleFactor = 0.65;
                              isDrawerOpen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: primaryGreen),
                          Text('India'),
                        ],
                      )
                    ],
                  ),
                  CircleAvatar()
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search pet to adopt'),
                  Icon(Icons.settings)
                ],
              ),
            ),
            Container(
              height: 120.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: shadowList),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50,
                            width: 50,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Screen2();
                }));
              },
              child: Container(
                height: 230,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 60.0),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        Align(
                          child: Hero(
                              tag: 1,
                              child: Image.asset('images/pet-cat2.png')),
                        )
                      ],
                    )),
                    //this is for testing
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 70.0, bottom: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 230,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60.0),
                        decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                      Align(
                        child: Image.asset('images/pet-cat1.png'),
                      )
                    ],
                  )),
                  //this is for testing
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 70.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
