import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with TickerProviderStateMixin {
  AnimationController _controller;

  TabController tabController;

  var user = 'FF';
  var title = 'FF';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('travel', style: TextStyle(color: Colors.grey, fontSize: 25.0, fontWeight: FontWeight.bold),),
                    Icon(Icons.my_location, color: Colors.grey,),
                    Text('gram', style: TextStyle(color: Colors.grey, fontSize: 25.0, fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.add_alert, color: Colors.grey,),
                    SizedBox(width: 10.0,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/user.jpg'),
                          fit: BoxFit.cover
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 30, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.blue
                      ),
                      child: Icon(Icons.local_airport, size: 30, color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MALDIVES TRP 2018',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey
                          ),
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          'Add an Update',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.grey,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'FROM THE COMMUNITY',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue
                  ),
                ),
              ],
            ),
          ),
          BuildImageGrid(imageList: ['assets/images/6.jpg', 'assets/images/1.jpg', 'assets/images/2.jpg',],),
          BuildImageDetails(title: 'Maui Summer 2018', user: 'Fansoni Muzanzo'),
          BuildImageGrid(imageList: ['assets/images/3.jpg', 'assets/images/5.jpg', 'assets/images/2.jpg',],),
          BuildImageDetails(title: 'Melhor Encontro 2019', user: 'Fansoni Muzanzo'),
          BuildImageGrid(imageList: ['assets/images/4.PNG', 'assets/images/5.jpg', 'assets/images/2.jpg',],),
          BuildImageDetails(title: 'Entre Amigos 2020', user: 'Fansoni Muzanzo'),
        ],
      ),
      bottomNavigationBar: Material(
        child: TabBar(
          controller: tabController,
          indicatorWeight: 3,
          indicatorColor: Colors.grey,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home, color: Colors.black,),
            ),
            Tab(
              icon: Icon(Icons.search, color: Colors.grey,),
            ),
            Tab(
              icon: Icon(Icons.show_chart, color: Colors.grey,),
            ),
            Tab(
              icon: Icon(Icons.add_circle_outline, color: Colors.grey,),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildImageDetails extends StatelessWidget {
  const BuildImageDetails({
    Key key,
    @required this.title,
    @required this.user,
  }) : super(key: key);

  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.location_on, color: Colors.grey,),
                  SizedBox(width: 3.0,),
                  Icon(Icons.chat_bubble_outline, color: Colors.grey,),
                  SizedBox(width: 3.0,),
                  Icon(Icons.favorite_border, color: Colors.grey,),
                ],
              ),
            ],
          ),
          SizedBox(height: 6.0,),
          Row(
            children: <Widget>[
              Text(
                user + ' added 52 Photos . ',
                style: TextStyle(
                  //fontSize: 16,
                  color: Colors.grey
                ),
              ),
              Text(
                '2h ago . ',
                style: TextStyle(
                  //fontSize: 16,
                  color: Colors.grey.withOpacity(0.5)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildImageGrid extends StatelessWidget {
  const BuildImageGrid({
    Key key,
    @required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Row(
        children: <Widget>[
          Container(
            height: 225,
            width: (MediaQuery.of(context).size.width - 40)/2 + 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageList[0]),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
          ),
          SizedBox(width: 3.0,),
          Column(
            children: <Widget>[
              Container(
                height: 111,
                width: (MediaQuery.of(context).size.width - 40)/2 - 45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageList[0]),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 3.0,),
              Container(
                height: 111,
                width: (MediaQuery.of(context).size.width - 40)/2 - 45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageList[0]),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}