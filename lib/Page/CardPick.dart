import 'package:flutter/material.dart';

class CardPick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("抽卡")),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.blue[700],
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          elevation: 20,
          child: Column(
            children: [
              CardPhoto(),
              CardInfo(),
              CardInfo(),
              CardInfo(),
              CardInfo(),
              CardInfo(),
              CardInfo(),
              CardInfo(),
              CardInfo(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.blue[800],
                      minimumSize: Size(double.infinity, 60)),
                  onPressed: () {},
                  child: Text(
                    "送出好友邀請",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class CardPhoto extends StatelessWidget {
  final double phwidth = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 225,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                )),
                Expanded(
                  child: Container(color: Colors.white),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Card(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: phwidth,
                    height: phwidth / 3 * 4,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "我是學校和系別喔",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  // CardInfo({this.title, this.info});

  String title = "範例";
  String info = "簡單的範例 簡單的範例簡單的範例簡單的範例 簡單的範例";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.blue),
                    )),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      info,
                      textAlign: TextAlign.left,
                    )),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: 1,
          )
        ],
      ),
    );
  }
}
