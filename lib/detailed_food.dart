import 'package:flutter/material.dart';

class PageDetail extends StatefulWidget {

  final imgPath,foodName,price,likes,calCount,serving;

  PageDetail({Key key, this.imgPath,this.foodName,this.price,this.likes,this.calCount,this.serving}) : super(key: key);

  @override
  _PageDetailState createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F0EB),
        body: new ListView(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                  height: 485,
                  width: double.infinity,
                ),
                new Hero(
                    tag: widget.imgPath,
                    child: new Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.imgPath), fit: BoxFit.cover
                          )
                      ),
                    )
                ),
                new Padding(
                    padding: new EdgeInsets.only(top: 15, left: 15),
                    child: new Container(
                      width: 45,
                      height: 45,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white.withOpacity(0.6)
                      ),
                      child: new Center(
                        child: new IconButton(icon: new Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: () {
                          Navigator.of(context).pop();
                        }),
                      ),
                    )
                ),
                new Padding(
                    padding: new EdgeInsets.only(top: 265),
                    child: new Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35)),
                        color: Colors.white,
                      ),
                      child: new Padding(
                          padding: new EdgeInsets.only(left: 25, right: 25, top: 30),
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Container(
                                    width: MediaQuery.of(context).size.width - 180,
                                    child: new Text(widget.foodName, style: new TextStyle(fontSize: 28, color: Color(0xFF563734), fontWeight: FontWeight.bold)),
                                  ),
                                  new Text(widget.price.toString(), style: new TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Color(0xFFF76053)))
                                ],
                              ),
                              new SizedBox(height: 7.5),
                              new Row(
                                children: <Widget>[
                                  new Icon(Icons.favorite,
                                      color: Color(0xFFF75A4C), size: 22),
                                  new SizedBox(width: 5),
                                  new Text(widget.likes.toString(),
                                      style: new TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                  new SizedBox(width: 25),
                                  new Icon(Icons.account_box,
                                      color: Color(0xFFF75A4C), size: 22),
                                  new SizedBox(width: 5),
                                  new Text(widget.calCount.toString() + 'cal',
                                      style: new TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                  new SizedBox(width: 25),
                                  new Icon(Icons.play_circle_outline,
                                      color: Color(0xFFF75A4C), size: 22),
                                  new SizedBox(width: 5),
                                  new Text(widget.serving,
                                      style: new TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                ],
                              ),
                              new Expanded(child: new Container()),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new TabBar(
                                      controller: tabController,
                                      indicatorColor: Color(0xFFFE8A7E),
                                      indicatorSize: TabBarIndicatorSize.label,
                                      indicatorWeight: 2.0,
                                      isScrollable: true,
                                      labelColor: Color(0xFF440206),
                                      unselectedLabelColor: Colors.grey,
                                      tabs: [
                                        new Tab(
                                          child: Text(
                                            'Details',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                        new Tab(
                                          child: Text(
                                            'Ingredients',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                        new Tab(
                                          child: Text(
                                              'Time',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                              ),
                                            ),
                                        ),
                                      ]),
                                ],
                              ),
                              new SizedBox(height: 10)
                            ],
                          )
                      ),
                    )
                ),
              ],
            ),
            new Container(
              height: MediaQuery.of(context).size.height - 325,
              child: new TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 85,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: new Padding(
                            padding: new EdgeInsets.only(left: 25, right: 5, top: 10, bottom: 10),
                            child: new Center(
                              child: new Text("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206)),),
                            ),
                          ),
                        ),
                        new SizedBox(height: 20),
                        new Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: new Padding(
                            padding: new EdgeInsets.only(right: 5, top: 15, bottom: 10),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new SizedBox(width: 0.5),
                                    new Container(
                                      width: 4,
                                      height: 22,
                                      decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.orange
                                      ),
                                    ),
                                    new SizedBox(width: 20.5),
                                    new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                  ],
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: new Container(
                                    height: 25,
                                    width: 90,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xFFF75A4C),
                                            style: BorderStyle.solid,
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: new Center(
                                      child: new Text(
                                        "The Lorem",
                                        style: new TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFF75A4C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(height: 15),

                                new Padding(
                                  padding: const EdgeInsets.only(left: 25.0),
                                  child: new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Row(
                                    children: <Widget>[
                                      new Container(
                                        height: 25,
                                        width: 90,
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xFFF75A4C),
                                                style: BorderStyle.solid,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        child: new Center(
                                          child: new Text(
                                            "The Lorem",
                                            style: new TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFF75A4C),
                                            ),
                                          ),
                                        ),
                                      ),
                                      new SizedBox(width: 20),
                                      new Container(
                                        height: 25,
                                        width: 90,
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xFFF75A4C),
                                                style: BorderStyle.solid,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        child: new Center(
                                          child: new Text(
                                            "The Lorem",
                                            style: new TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFF75A4C),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new SizedBox(height: 15),

                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Container(
                                    height: 25,
                                    width: 90,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xFFF75A4C),
                                            style: BorderStyle.solid,
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: new Center(
                                      child: new Text(
                                        "The Lorem",
                                        style: new TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFF75A4C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 85,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: new Padding(
                            padding: new EdgeInsets.only(left: 25, right: 5, top: 10, bottom: 10),
                            child: new Center(
                              child: new Text("Generate Lorem Ipsum placeholder text. Select the number of characters, words, sentences or paragraphs, and hit generate!", style: new TextStyle(fontSize: 17, color: Color(0xFF440206)),),
                            ),
                          ),
                        ),
                        new SizedBox(height: 20),
                        new Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: new Padding(
                            padding: new EdgeInsets.only(right: 5, top: 15, bottom: 10),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new SizedBox(width: 0.5),
                                    new Container(
                                      width: 4,
                                      height: 22,
                                      decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Colors.orange
                                      ),
                                    ),
                                    new SizedBox(width: 20.5),
                                    new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                  ],
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: new Container(
                                    height: 25,
                                    width: 90,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xFFF75A4C),
                                            style: BorderStyle.solid,
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: new Center(
                                      child: new Text(
                                        "The Lorem",
                                        style: new TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFF75A4C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(height: 15),

                                new Padding(
                                  padding: const EdgeInsets.only(left: 25.0),
                                  child: new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Row(
                                    children: <Widget>[
                                      new Container(
                                        height: 25,
                                        width: 90,
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xFFF75A4C),
                                                style: BorderStyle.solid,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        child: new Center(
                                          child: new Text(
                                            "The Lorem",
                                            style: new TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFF75A4C),
                                            ),
                                          ),
                                        ),
                                      ),
                                      new SizedBox(width: 20),
                                      new Container(
                                        height: 25,
                                        width: 90,
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xFFF75A4C),
                                                style: BorderStyle.solid,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        child: new Center(
                                          child: new Text(
                                            "The Lorem",
                                            style: new TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFF75A4C),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new SizedBox(height: 15),

                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Container(
                                    height: 25,
                                    width: 90,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xFFF75A4C),
                                            style: BorderStyle.solid,
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: new Center(
                                      child: new Text(
                                        "The Lorem",
                                        style: new TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFF75A4C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 85,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: new Padding(
                            padding: new EdgeInsets.only(left: 25, right: 5, top: 10, bottom: 10),
                            child: new Center(
                              child: new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206)),),
                            ),
                          ),
                        ),
                        new SizedBox(height: 20),
                        new Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: new Padding(
                            padding: new EdgeInsets.only(right: 5, top: 15, bottom: 10),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new SizedBox(width: 0.5),
                                    new Container(
                                      width: 4,
                                      height: 22,
                                      decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Colors.orange
                                      ),
                                    ),
                                    new SizedBox(width: 20.5),
                                    new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                  ],
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: new Container(
                                    height: 25,
                                    width: 90,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xFFF75A4C),
                                            style: BorderStyle.solid,
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: new Center(
                                      child: new Text(
                                        "The Lorem",
                                        style: new TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFF75A4C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(height: 15),

                                new Padding(
                                  padding: const EdgeInsets.only(left: 25.0),
                                  child: new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Row(
                                    children: <Widget>[
                                      new Container(
                                        height: 25,
                                        width: 90,
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xFFF75A4C),
                                                style: BorderStyle.solid,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        child: new Center(
                                          child: new Text(
                                            "The Lorem",
                                            style: new TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFF75A4C),
                                            ),
                                          ),
                                        ),
                                      ),
                                      new SizedBox(width: 20),
                                      new Container(
                                        height: 25,
                                        width: 90,
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xFFF75A4C),
                                                style: BorderStyle.solid,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        child: new Center(
                                          child: new Text(
                                            "The Lorem",
                                            style: new TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFF75A4C),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new SizedBox(height: 15),

                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Text("Varius sit amet mattis vulputate enim.", style: new TextStyle(fontSize: 17, color: Color(0xFF440206))),
                                ),
                                new SizedBox(height: 10),
                                new Padding(
                                  padding: const EdgeInsets.only(left:25),
                                  child: new Container(
                                    height: 25,
                                    width: 90,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xFFF75A4C),
                                            style: BorderStyle.solid,
                                            width: 1
                                        ),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: new Center(
                                      child: new Text(
                                        "The Lorem",
                                        style: new TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFFF75A4C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]
              )
            ),
          ],
        ),
        floatingActionButton: new Align(
          child: new Container(
              height: 50.0,
              width: 180.0,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    bottomLeft: Radius.circular(35)),
                color: Color(0xFFFA7364),
              ),
              child: new Center(
                child: new Text('Order Now', style: new TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold)),
              )
          ),
          alignment: Alignment.bottomRight,
        )
    );
  }
}


