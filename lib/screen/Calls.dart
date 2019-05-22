import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/model/calls.dart';
import 'package:whatsapp_ui_clone/model/chat.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context,i) =>
       new Column(
        children: <Widget>[
          new Divider(height: 20.0,),
          new ListTile(
            leading: new CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage(callData[i].imageUrl),
            ),
            title: 
              new Text(
              callData[i].name,
                style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                callData[i].time,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0
                  ),
                ),
            ),
            trailing: Icon(Icons.call),
             selected: true,
          
          ),
        ],
      ),
    );
  }


  
}
