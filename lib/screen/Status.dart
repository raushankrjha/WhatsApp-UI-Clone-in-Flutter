import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/model/chat.dart';
import 'package:whatsapp_ui_clone/widget/UserCard.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new UserCard("My Status", "https://learncodeonline.in/wp-content/uploads/2019/01/raushan-260x260.png", "Tap to add status update"),
          new Divider(),
          new Heading("Recent updates"),
          new Divider(),
          new UserCard(messageData[2].name, messageData[2].imageUrl, "Today, 9:05AM"),
          new UserCard(messageData[1].name, messageData[1].imageUrl, "Today, 8:07AM"),
           new Divider(),
          new Heading("Viewed updates"),
          new Divider(),     
          new UserCard(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
          new UserCard(messageData[4].name, messageData[4].imageUrl, messageData[4].time)
        ],
      ),
    );
  }
}


class Heading extends StatelessWidget {
	// a property on this class
	final String heading;
	// a constructor for this class
	Heading(this.heading);
	Widget build(context) {
		// Pass the text down to another widget
		return   new Container(
          
            child: Padding(
              
              padding: EdgeInsets.only(left: 4.0,top: 5.0),
              child: new Text(
              heading,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.grey
                )

              ),
            ),
            
          );
	}
}