import 'package:flutter/material.dart';
import 'package:hupptest/Theme/Color.dart';
import 'package:hupptest/Theme/CustomTextStyle.dart';
import 'package:hupptest/Widgets/CustomOutlineButton.dart';

import 'ShopDetail.dart';


String image = 'https://media.istockphoto.com/photos/fashion-clothes-on-a-rack-in-a-light-background-indoors-place-for-picture-id1257563298?b=1&k=20&m=1257563298&s=170667a&w=0&h=Hhf0-AsQp7Z7k9q8XKHfQUY86uPJvE8vmmGHXihWS_M= ';

class ShopListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context,constraint){

        double height = constraint.biggest.height;
        double width = constraint.biggest.width;
        return ListView.separated(
          key: PageStorageKey("list_data"),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShopDetail(index: index,image: image,title: "Clothes",),
                    ),
                );
              },
              child: ResturantListItem(width: width,height: height,index: index,),
            );
          },
          separatorBuilder: (context,index){
            return Container();
          },
          itemCount: 10,
        );
      },
    );
  }
}

class TextSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("clothes",style: shopListTitleText(),),
                Text("shopify",style: shopListSubTitleText())
              ],
            ),
          ),
        ),
        Container(
          child: CustomOutlineButton(
          onPressed: (){

          },
          textStyle: shopListButton(),
          highlightColor: primaryColor,
          borderColor: primaryColor,
          text: "SELECT",
          ),
        ),
      ],
    );
  }
}

class ResturantListItem extends StatelessWidget{

  final double height;
  final double width;
  final int index;
  ResturantListItem({required this.width,required this.height,required this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      height: height/3,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Hero(
                tag: index,
                child: Container(
                  width: width-20,
                  child: Image.network(image,fit: BoxFit.fitWidth,),
                ),
              )
          ),
          TextSection()
        ],
      ),
    );
  }
}