import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Form(
                child: Column(
              children: [
                ContactMessage(
                  profilePic: 'male',
                  name: 'MOHAMMED  ',
                  message: 'hi',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'female',
                  name: 'AYA  ',
                  message: 'brb',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'male',
                  name: 'HAMID AMIR',
                  message: 'i will kill you',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'anonymous',
                  name: 'UNKNOWN SENDER ',
                  message: 'who r u ?',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'anonymous',
                  name: 'AHMED SIDDIG  ',
                  message: 'r u sad?',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'male',
                  name: 'MONZER OMER  ',
                  message: 'congratulations!',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'male',
                  name: 'FARIS  ',
                  message: 'i will beat you',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'anonymous',
                  name: 'OBADA  ',
                  message: 'ksa ?',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'male',
                  name: 'MUGTABA  ',
                  message: 'ok bye',
                ),
                Divider(
                  thickness: 1,
                ),
                ContactMessage(
                  profilePic: 'female',
                  name: 'RANA  ',
                  message: 'where r u?',
                ),
              ],
            ))
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gmail'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Mohammed Ahmed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text("ma2286572@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpeg'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  minRadius: 30,
                  backgroundImage: AssetImage('images/avatar2.jpeg'),
                ),
              ],
            ),
            ListTile(
              title: Text("Sent"),
              leading: Icon(Icons.send),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("Stared"),
              leading: Icon(Icons.star),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("Archive"),
              leading: Icon(Icons.archive),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("Chat"),
              leading: Icon(Icons.chat),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'chat'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
        onPressed: () {},
      ),
    );
  }
}

class ContactMessage extends StatelessWidget {
  final String name;
  final String message;
  final String profilePic;
  ContactMessage(
      {required this.name, required this.message, required this.profilePic});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/${profilePic}.png'),
            radius: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: name,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: '@ ${name}',
                          style: TextStyle(color: Colors.grey, fontSize: 13))
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'You:  ',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: message,
                          style: TextStyle(color: Colors.black54, fontSize: 20))
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
