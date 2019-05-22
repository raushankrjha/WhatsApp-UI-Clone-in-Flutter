import 'package:flutter/material.dart';

import 'package:whatsapp_ui_clone/model/chat.dart';
import 'package:whatsapp_ui_clone/screen/ChatDetails.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

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
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              new Text(
              messageData[i].name,
                style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              new Text(
                messageData[i].time,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0
                  ),
                ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                messageData[i].message,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0
                  ),
                ),
            ),
            onTap: (){
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => ChatDetails(name: messageData[i].name, profileImage: messageData[i].imageUrl)
              );
              Navigator.of(context).push(route);
            },
          ),
        ],
      ),
    );
  }


  
}
