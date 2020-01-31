import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: <Widget>[
          CoffeeImage(),
          SizedBox(
            width: 20,
          ),
          Expanded(child: CoffeeDetails()),
          CoffeePrice()
        ],
      ),
    );
  }
}

class CoffeeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(8))),
    );
  }
}

class CoffeeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Bawongso',
          style: Theme.of(context).textTheme.title,
        ),
        Text(
          'Java',
          style: Theme.of(context).textTheme.caption,
        ),
        Row(
          children: <Widget>[Icon(Icons.favorite), Text('158')],
        )
      ],
    );
  }
}

class CoffeePrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          width: 30,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.green),
          child: Icon(
            Icons.local_cafe,
            size: 15,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text('\$3.00')
      ],
    );
  }
}
