import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_apps/NewsContiner.dart';
import 'package:news_apps/category/tabs_item.dart';

import '../model/SourceResponse.dart';

class TabCount extends StatefulWidget {
  List<Source> sourcesList;


  TabCount({required this.sourcesList});

  @override
  State<TabCount> createState() => _TabCountState();
}

class _TabCountState extends State<TabCount> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourcesList.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              indicatorColor: Colors.transparent,
              isScrollable: true,
              tabs: widget.sourcesList
                  .map((source) => TabsItem(
                      isSelected:
                          selectedIndex == widget.sourcesList.indexOf(source),
                      source: source))
                  .toList(),
            ),

            Expanded(child: NewsContainer(source: widget.sourcesList[selectedIndex]))
          ],
        ));
  }
}
