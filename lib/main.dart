import 'package:flutter/material.dart';
import 'package:flutter_food_store/barbeque_list.dart';
import 'package:flutter_food_store/detailed_food.dart';
import 'package:flutter_food_store/drink_list.dart';
import 'package:flutter_food_store/food_list.dart';
import 'package:flutter_food_store/pizza_list.dart';
import 'package:flutter_food_store/salad_list.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xFFFF8B7D));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFF9F0EB),
      body: new ListView(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Container(
                height: 205.0,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60.0),
                  ),
                  color: Color(0xFFFA7364),
                ),
              ),
              new Container(
                height: 150.0,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60.0),
                  ),
                  color: Color(0xFFFF8B7D),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 35.0, left: 20.0),
                child: Text(
                  'Good Afternoon!',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 75.0, left: 20.0),
                child: Text(
                  'Choose your favorite!',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 120.0, left: 20.0, right: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(5.0),
                        topLeft: Radius.circular(5.0),
                      )),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for your favorite',
                      hintStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      prefixIcon: new Padding(
                        padding: const EdgeInsetsDirectional.only(start: 13.0),
                        child: Icon(Icons.search, color: Color(0xFF8D605A)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          new TabBar(
              controller: tabController,
              indicatorColor: Color(0xFFFE8A7E),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2.0,
              isScrollable: true,
              labelColor: Color(0xFF440206),
              unselectedLabelColor: Color(0xFF440206),
              tabs: [
                new Tab(
                  child: Text(
                    'DESSERT',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                new Tab(
                  child: new Text(
                    'PIZZA',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                new Tab(
                  child: Text(
                    'BARBEQUE',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                new Tab(
                  child: Text(
                    'DRINKS',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                new Tab(
                  child: Text(
                    'SALADS',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                )
              ]),
          new SizedBox(height: 10.0),
          new Container(
            height: MediaQuery.of(context).size.height - 460.0,
            child: new TabBarView(
              controller: tabController,
              children: <Widget>[
                new FoodList(),
                new PizzaList(),
                new BarbequeList(),
                new DrinkList(),
                new SaladList(),
              ],
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(left: 15, top: 20),
            child: new Text(
              "RECOMMEND",
              style: new TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          _listItem(
              'images/pic2.jpg',
              'The Lorem Pizza',
              'Lorem Ipsum is simply dummy text, text dummy simply is Ipsum Lorem text',
              '\$10.0',
              337,
              413,
              '2-3per'),
          new SizedBox(height: 10),
          _listItem(
              'images/pic5.png',
              'The Lorem Salad',
              'Lorem Ipsum is simply dummy text, text dummy simply is Ipsum Lorem text',
              '\$8.0',
              264,
              15,
              '2-3per'),
          new SizedBox(height: 10),
        ],
      ),
    );
  }

  _listItem(String imgPath, String foodName, String desc, String price,
      int likes, int calCount, String serving) {
    return new Padding(
      padding: new EdgeInsets.only(left: 15, top: 15),
      child: new Stack(
        children: <Widget>[
          new Container(
            height: 170,
            width: double.infinity,
          ),
          new Positioned(
              left: 20,
              top: 33,
              child: new Container(
                height: 125,
                width: MediaQuery.of(context).size.width - 15,
                decoration: new BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(10)),
                    color: Color(0xFFFFF5EF),
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3.0,
                          blurRadius: 3.0)
                    ]),
              )),
          new Positioned(
              left: 120,
              top: 63,
              child: new Container(
                height: 105,
                width: MediaQuery.of(context).size.width - 15,
                decoration: new BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(10)),
                    color: Color(0xFFFFF5EF),
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3.0,
                          blurRadius: 3.0)
                    ]),
                child: new Align(
                  alignment: Alignment.bottomRight,
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 10, left: 10),
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.favorite,
                            color: Color(0xFFF75A4C), size: 22),
                        new SizedBox(width: 5),
                        new Text(likes.toString(),
                            style: new TextStyle(
                                fontSize: 15, color: Colors.grey)),
                        new SizedBox(width: 25),
                        new Icon(Icons.account_box,
                            color: Color(0xFFF75A4C), size: 22),
                        new SizedBox(width: 5),
                        new Text(calCount.toString() + 'cal',
                            style: new TextStyle(
                                fontSize: 15, color: Colors.grey)),
                        new SizedBox(width: 25),
                        new Icon(Icons.play_circle_outline,
                            color: Color(0xFFF75A4C), size: 22),
                        new SizedBox(width: 5),
                        new Text(serving,
                            style: new TextStyle(
                                fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              )),
          new Container(
            height: 125,
            width: MediaQuery.of(context).size.width - 15,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: Colors.white,
            ),
            child: new Padding(
              padding:
                  new EdgeInsets.only(left: 20, right: 8, top: 8, bottom: 8),
              child: new Row(
                children: <Widget>[
                  new InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PageDetail(
                              imgPath: imgPath,
                              foodName: foodName,
                              price: price,
                              likes: likes,
                              calCount: calCount,
                              serving: serving)));
                    },
                    child: new Hero(
                      tag: imgPath,
                      child: new Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: new DecorationImage(
                                image: new AssetImage(imgPath),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  new SizedBox(width: 10),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new SizedBox(height: 5),
                      new Text(foodName,
                          style: new TextStyle(
                              color: Color(0xFF563734),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      new SizedBox(height: 5),
                      new Container(
                        width: MediaQuery.of(context).size.width - 180,
                        child: new Text(desc,
                            style: new TextStyle(
                                color: Color(0xFFB2A9A9), fontSize: 13)),
                      ),
                      new SizedBox(height: 10),
                      new Text(price.toString(),
                          style: new TextStyle(
                              color: Color(0xFFF76053), fontSize: 18))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
