import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

var lightGrey = Color(0xFF414350);
var lightBlue = Color(0xFF5157c2);

var bedRoomImage =
    'https://d4qwptktddc5f.cloudfront.net/mark-zeff-new-york-loft-daughter-bedroom-0418-SPRINGHOMES.jpg';
var fkaTwigsImage =
    'https://upload.wikimedia.org/wikipedia/en/thumb/7/77/FKA_twigs_-_LP1.png/220px-FKA_twigs_-_LP1.png';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF32323e),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 48.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        'Bedroom',
                        style: TextStyle(color: Colors.white, fontSize: 26.0),
                      )
                    ],
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  )
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                child: Image.network(bedRoomImage, fit: BoxFit.cover),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 1,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: <Widget>[
                    Container(
                        height: 40.0,
                        color: lightGrey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 28.0,
                                        width: 28.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(fkaTwigsImage)),
                                              borderRadius: BorderRadius.circular(8.0)
                                        ),
                                        child: Center(child: Icon(Icons.pause, color: Colors.white, size: 12.0)),
                                      ),
                                      SizedBox(
                                        width: 18.0,
                                      ),
                                      Text(
                                        '0:23',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Text(
                                    'HomePod',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        letterSpacing: 1.2),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 4.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [lightBlue, Colors.purple],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight)),
                            )
                          ],
                        )),
                    ItemCard('Kitchen Lamp', FontAwesomeIcons.lightbulb,
                        lightBlue, '72%', 160.0, [Colors.white, Colors.white]),
                    ItemCard('Need to water', FontAwesomeIcons.water, lightGrey,
                        'Eddy', 0.0, [lightBlue, Colors.purple]),
                    ItemCard('Current power', FontAwesomeIcons.powerOff,
                        lightGrey, '1.2 kW', 0.0, [lightBlue, Colors.purple]),
                    ItemCard('Range hood', FontAwesomeIcons.elementor,
                        lightGrey, 'On', 160.0, [lightBlue, Colors.purple]),
                    ItemCard('Need to Water', FontAwesomeIcons.water, lightGrey,
                        'Eddy', 42.0, [lightBlue, Colors.purple]),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class ItemCard extends StatelessWidget {
  final name;
  final icon;
  final color;
  final type;
  final progress;
  final colors;
  ItemCard(
      this.name, this.icon, this.color, this.type, this.progress, this.colors);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.0,
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        icon,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Text(
                        type,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.2),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 4.0,
              width: progress,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: colors,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
            )
          ],
        ));
  }
}
