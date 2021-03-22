import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final _tabs = [
    Tab(text: "推薦"),
    Tab(text: "全部"),
    Tab(text: "追蹤"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: _tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (context, bool innerBoxScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverSafeArea(
                  top: false,
                  sliver: SliverAppBar(
                    title: Text("首頁"),
                    floating: true,
                    pinned: true,
                    snap: false,
                    primary: true,
                    forceElevated: innerBoxScrolled,
                    bottom: TabBar(
                      tabs: _tabs,
                    ),
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
