import 'package:flutter/material.dart';

class BarbequeList extends StatefulWidget {
  @override
  _BarbequeListState createState() => _BarbequeListState();
}

class _BarbequeListState extends State<BarbequeList> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildFoodCard('images/pic3.jpg', 'Batavia 4Grill', 25.0, 576),
        _buildFoodCard('images/pic3.jpg', 'Batavia 4Grill', 25.0, 576),
        _buildFoodCard('images/pic3.jpg', 'Batavia 4Grill', 25.0, 576),
        _buildFoodCard('images/pic3.jpg', 'Batavia 4Grill', 25.0, 576),
      ],
    );
  }
}

_buildFoodCard(String imgPath, String foodName, double price, int calCount){
  return new Padding(
    padding: new EdgeInsets.only(top: 8.0, left: 15.0, right: 10.0),
    child: new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Padding(
                  padding: new EdgeInsets.only(left: 15, right: 15, top: 8),
                  child: new Container(
                    height: 100,
                    width: 100,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: new DecorationImage(image: new AssetImage(imgPath), fit: BoxFit.cover)
                    ),
                  )
              ),
            ],
          ),
          new Container(
            width: 125,
            padding: new EdgeInsets.only(left: 10, top: 5, right: 5),
            child: new Text(
              foodName,
              textAlign: TextAlign.start,
              style: new TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(left: 10, top: 5),
            child:  new Text(
                r"$" + price.toString(),
                style: new TextStyle(fontSize:17, color: Color(0xFFF96251))
            ),
          ),
          new Expanded(child: new Container()),
          new Padding(
              padding: new EdgeInsets.only(left: 10, top: 5, bottom: 5),
              child:  new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Icon(Icons.fastfood, color: Color(0xFFFA8073)),
                  new SizedBox(width: 5),
                  new Text(
                    calCount.toString() + "cal",
                    style: new TextStyle(fontSize:17, color: Color(0xFFA89E9C)),
                  ),
                ],
              )
          ),
        ],
      ),
    ),
  );
}
