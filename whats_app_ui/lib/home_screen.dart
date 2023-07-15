import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          //for center title
          // centerTitle: true,
          title: Text('WhatsApp'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Chats'),

              ),
              Tab(
                child:Text('Status'),

              ),
              Tab(
                child:Text('Calls'),

              ),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon:Icon(Icons.more_vert),
                itemBuilder: (context)=>[
                  PopupMenuItem(
                    value: 1,
                      child: Text('New Groups')),
                  PopupMenuItem(
                      value: 1,
                      child: Text('Settings')),
                  PopupMenuItem(
                      value: 1,
                      child: Text('Logout')),
                ]),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(
          children: [
            ListView.builder(
            itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?cs=srgb&dl=pexels-tu%E1%BA%A5n-ki%E1%BB%87t-jr-1382731.jpg&fm=jpg'),
                    ),
                    title: Text('Ayza'),
                    subtitle: Text('I am sick'),
                    trailing: Text('8:58 PM'),
                  );
                }),
            Text('Status'),
            Text('Calls'),
          ],
        ),
      ),
    );
  }
}
