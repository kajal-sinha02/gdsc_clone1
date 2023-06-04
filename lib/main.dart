import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Clone());
  }
}

class Clone extends StatefulWidget {
  const Clone({Key? key}) : super(key: key);

  @override
  State<Clone> createState() => _CloneState();
}

class _CloneState extends State<Clone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('images/pikachu.png'),
            );
          },
        ),
        title: Text(
          '\t POKEMON\n  Ash Misty Brock',
          style: TextStyle(fontSize: 19),
        ),
        bottom: PreferredSize(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Pikachu',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            preferredSize: Size.zero),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white54,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 20,
              ),
              Container(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Stories',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/ash3.gif'),
                              height: 280,
                              width: 120,
                            ),
                            Container(
                              child: Text(
                                'ASH',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/misty2.jpg'),
                              height: 250,
                              width: 120,
                            ),
                            Container(
                              child: Text(
                                'MISTY',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/brock2.jpg'),
                              height: 250,
                              width: 120,
                            ),
                            Container(
                              child: Text(
                                'BROCK',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Trending',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 400,
                color: Colors.white10,
                child: Expanded(
                  child: Card(
                    color: Colors.white10,
                    child: Image(image: AssetImage('images/team.jpg')),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome to pokemon world an meet your friends Ash misty and brock',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(height: 20,),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Discover',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 400,
                color: Colors.white10,
                child: Expanded(
                  child: DecoratedBox(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(12),),
                    child: Card(
                      color: Colors.white10,
                      child: Image(image: AssetImage('images/discover.jpg')),
                    ),
                  ),
                ),
              ),

              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Discover pokemon world and let the magic groove you',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
