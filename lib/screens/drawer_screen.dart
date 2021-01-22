import 'package:flutter/material.dart';
import 'package:pet_UI/configuration.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.0, bottom: 30.0, left: 10.0),
      color: primaryGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mohammed Sha Faisal',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Active status',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w400))
                ],
              )
            ],
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(element['title'],
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 2,
                height: 20.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Log out',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
