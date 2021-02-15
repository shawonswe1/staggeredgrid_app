import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Staggered extends StatefulWidget {
  @override
  _StaggeredState createState() => _StaggeredState();
}

class _StaggeredState extends State<Staggered> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: new StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => new Container(
              color: Colors.green,
              child: new Center(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text('$index'),
                ),
              )),
          staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
