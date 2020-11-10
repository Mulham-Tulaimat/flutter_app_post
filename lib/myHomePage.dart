import 'package:flutter/material.dart';
import 'package:flutter_app_post/PostData.dart';
import 'package:flutter_app_post/PostWidget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageWidgetState createState() => _MyHomePageWidgetState();
}

class _MyHomePageWidgetState extends State<MyHomePage> {
  var listPost =  [
      {
        "name": "Deaa",
        "phohtUrl":
            "https://www.befunky.com/images/prismic/2ba00f8e1b504cd1576ff85bd101c2137ea6a02e_landing-photo-to-art-img-4-before.png?auto=webp&format=jpg&width=736",
        "timesTamp": 155665588,
        "postMsg": "I lost my mobily",
        "type": 0,
        "communication": "e@gmail.com"
      },
      {
        "name": "Ahmad",
        "phohtUrl":
            "https://cnet3.cbsistatic.com/img/-qQkzFVyOPEoBRS7K5kKS0GFDvk=/940x0/2020/04/16/7d6d8ed2-e10c-4f91-b2dd-74fae951c6d8/bazaart-edit-app.jpg",
        "timesTamp": 155665588,
        "postMsg": "Search for an English language institute in Damascus",
        "type": 1,
        "communication": "ahmad@gmail.com"
      }
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: new Text(""),
        title: Text(
          "Posts",
          style: TextStyle(color: Colors.white),
        ),
        brightness: Brightness.dark,
        backgroundColor: Colors.blue,
      ),
      body: new Stack(
        children: [
          Image.asset(
            'assets/img/back.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: listPost.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: new PostWidget(postData: PostData.fromJson(listPost[index])));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
