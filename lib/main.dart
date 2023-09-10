import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

@override
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
        backgroundColor: Color.fromRGBO(188, 136, 78, 1),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(237, 224, 204, 1)),
        child: Column(
          children: [
            Container(
              width: 600,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(188, 136, 78, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 40),
                      child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/post.jpg"))),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              "Julie Robert",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 2, 7, 55),
                                  fontFamily: "font",
                                  fontWeight: FontWeight.w700),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 45, top: 6),
                            child: Text(
                              "SoftWare Tester",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: "font",
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30, top: 20),
                      child: Text(
                        "My Tasks",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 15, right: 30),

                      // child: CircleAvatar(radius:30,backgroundImage: AssetImage("assets/post.jpg"),))
                      child: CircleAvatar(
                        child: Icon(
                          Icons.date_range,
                          color: Colors.white,
                        ),
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 34, 106, 109),
                      ))
                ],
              ),
            ),

            //1
            Container(
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                        radius: 30,
                        backgroundColor: Color.fromRGBO(215, 98, 83, 1),
                      )),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "My Tasks",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 45, 33, 123)),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20, top: 5),
                            child: Text("I have tasks to do",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                )))
                      ],
                    ),
                  )
                ],
              ),
            ),

            //2
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.umbrella,
                          color: Colors.white,
                        ),
                        radius: 30,
                        backgroundColor: Color.fromRGBO(155, 135, 35, 1),
                      )),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "April Tasks",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 45, 33, 123)),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: Text("Business Trip",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                )))
                      ],
                    ),
                  )
                ],
              ),
            ),

            //3
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 60, 136, 234),
                      )),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 45, 33, 123)),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20, top: 5),
                            child: Text("Meeting Clients",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Active projects
            Container(
                margin: EdgeInsets.only(right: 300, top: 10),
                child: Text("Active Projects",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Icon(Icons.emergency_rounded,
                      size: 30, color: Colors.white),
                  margin: EdgeInsets.only(top: 5),
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(35, 118, 68, 1),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  child: Icon(
                    Icons.radio,
                    size: 30,
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 5),
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(159, 52, 135, 1),
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
