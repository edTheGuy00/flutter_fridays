import 'package:flutter/material.dart';
import 'package:flutter_fridays/coffee_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HomeAppBar(
        height: size.height * .2,
      ),
      body: HomeBody(),
    );
  }
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const HomeAppBar({Key key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppBarTheme.of(context).color,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: AppBarTheme.of(context).elevation,
      child: Container(
        decoration: BoxDecoration(),
        child: SafeArea(
          bottom: false,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Text(
                      'Coffee',
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      // add image here
                      ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  ActionChip(label: Text('Data'), onPressed: () {})
                ],
              ),
            ),
            Expanded(
                child: Container(
                    child: ListView.separated(
              separatorBuilder: (ctx, index) {
                return SizedBox(
                  height: 5,
                );
              },
              itemBuilder: (ctx, index) {
                return CoffeeCard();
              },
              itemCount: 10,
            )))
          ],
        ),
      ),
    );
  }
}
