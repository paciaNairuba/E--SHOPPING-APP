import 'package:flutter/material.dart';
import 'package:hupptest/Theme/Color.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        key: new PageStorageKey('shop items'),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 80.0,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Image.network("https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXxlbnwwfHwwfHw%3D&w=1000&q=80",fit: BoxFit.fitHeight,),
                    ),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                          height: 90.0,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "item details",
                                      style: TextStyle(
                                          fontSize: 16.0, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                    "\$12",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              Text(
                                "item",
                                maxLines: 2,
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5.0,
          );
        },
        itemCount: 10);
  }
}
