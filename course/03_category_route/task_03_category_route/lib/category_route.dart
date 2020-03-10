// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants


/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCaterogyWidget() {
    return ListView.builder(
        itemBuilder: (BuildContext context, int i) {
          return _buildRow(_categoryNames[i], _baseColors[i]);
        });
  }

  Widget _buildRow(String categoryName, Color color) {
    return InkWell(
      highlightColor: color,
      splashColor: color,
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      onTap: () => { print('I was tapped!') },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.cake, size: 60.0,),
          ),
          Center(
            child: Text(categoryName, style: TextStyle(fontSize: 24.0),),
            ),
        ],),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    // TODO: Create a list view of the Categories
    final listView = _buildCaterogyWidget();

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text('Unit Converter'),
    );

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: appBar,
      body: listView,
    );
  }
}
