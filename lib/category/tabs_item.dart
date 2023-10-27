import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_apps/styles/color.dart';

import '../model/SourceResponse.dart';

class TabsItem extends StatelessWidget {
bool isSelected;
Source source;
TabsItem({required this.isSelected,required this.source});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: primaryColor,width: 3),
          color: isSelected? primaryColor:Colors.transparent
      ),
      child: Text(source.name??"",style: TextStyle(fontSize: 18,color: isSelected?WhiteColor:primaryColor)),
    );
  }
}
