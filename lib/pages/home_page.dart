import 'package:flutter/material.dart';
import 'package:travel_app/widgets/build_image_details.dart';
import 'package:travel_app/widgets/build_image_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
        child: ListView(
          children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        'travel',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.my_location, color: Colors.grey),
                      Text(
                        'gram',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.add_alert, color: Colors.grey),
                SizedBox(width: 10.0),
                CircleAvatar(
                  foregroundImage: AssetImage('assets/images/user.jpg'),
                  radius: 25.0,
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 25,
                  child: Icon(
                    Icons.local_airport,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MALDIVES TRIP 2018',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Add an Update',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FROM THE COMMUNITY',
                  style: TextStyle(fontSize: 18.0, color: Colors.grey),
                ),
                Text(
                  'View All',
                  style: TextStyle(fontSize: 16.0, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            BuildImageGrid(
              imageList: [
                'assets/images/6.jpg',
                'assets/images/1.jpg',
                'assets/images/2.jpg',
              ],
            ),
            SizedBox(height: 20.0),
            BuildImageDetails(
                title: 'Maui Summer 2018', user: 'Fansoni Muzanzo'),
            SizedBox(height: 20.0),
            BuildImageGrid(
              imageList: [
                'assets/images/3.jpg',
                'assets/images/5.jpg',
                'assets/images/2.jpg',
              ],
            ),
            SizedBox(height: 20.0),
            BuildImageDetails(
                title: 'Melhor Encontro 2019', user: 'Fansoni Muzanzo'),
            SizedBox(height: 20.0),
            BuildImageGrid(
              imageList: [
                'assets/images/4.PNG',
                'assets/images/5.jpg',
                'assets/images/2.jpg',
              ],
            ),
            SizedBox(height: 20.0),
            BuildImageDetails(
                title: 'Entre Amigos 2020', user: 'Fansoni Muzanzo'),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        child: TabBar(
          controller: _tabController,
          indicatorWeight: 3,
          indicatorColor: Colors.grey,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.show_chart,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
