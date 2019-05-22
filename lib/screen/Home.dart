import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screen/Calls.dart';
import 'package:whatsapp_ui_clone/screen/Camera.dart';
import 'package:whatsapp_ui_clone/screen/Chats.dart';
import 'package:whatsapp_ui_clone/screen/Status.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(initialIndex: 1, vsync: this, length: 4);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        title: new Text('WhatsApp', style: new TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.search),
            color: Colors.white,
            onPressed: (){},
          ),
          IconButton(
            icon: new Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
        
    
        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt, color: Colors.white,)),
            new Tab(child: new Text("CHATS", style: Theme.of(context).textTheme.button)),
            new Tab(child: new Text("STATUS", style: Theme.of(context).textTheme.button)),
            new Tab(child: new Text("CALLS", style: Theme.of(context).textTheme.button)),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camera(),
          new Chats(),
          new Status(),
          new Calls(),
         
         
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: (){
         
        },
      ),
    );

  }
}