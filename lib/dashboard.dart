import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900] ,
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
            color: Colors.grey[850],
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Avg. Hours of Sleep",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    )
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "9 Hours 15 Minutes",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            )
          ),
          Card(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
            color: Colors.grey[850],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                          "9h 5m",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          "8/11",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Text(
                          "21:09",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          )
                      ),
                      Icon(Icons.arrow_forward_rounded, color: Colors.green,),
                      Text(
                          "07:20",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          )
                      ),
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

