import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child:Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1611671384789-7b1500656ff9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fG1vcm5pbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.white.withOpacity(0.3)
                  ),
                  child: Container(
                    width: 200,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Text(
                      'Going to Bed',
                      style: TextStyle(fontSize: 28,color: Colors.black),
                    ),
                  ),
                  onPressed: () {},
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 200, 10, 40),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/dash");
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.white10.withOpacity(0.4)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                        child: Text("Dashboard", style: TextStyle(fontSize: 25,color: Colors.black)),
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}