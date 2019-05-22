
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
	// a property on this class
	final String name,imageurl,time;

	// a constructor for this class
	UserCard(this.name,this.imageurl,this.time);

	Widget build(context) {
		// Pass the text down to another widget
		return  new ListTile(
            leading: new CircleAvatar(
              maxRadius: 25,
              foregroundColor: Colors.deepPurple.shade100,
              backgroundImage: NetworkImage(imageurl),
            ),
            title: new Text(
              name,
              style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: new Text(
              time
            ),
          );
	}
}