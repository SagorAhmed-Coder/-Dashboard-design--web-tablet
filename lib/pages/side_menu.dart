import 'package:flutter/material.dart';

import 'my_button.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Center(
            child: Image.asset(
              height: 60,
                'asset/dashboard.png'),
          ),
          const SizedBox(height: 17,),
          //button
          myButton(
            bgColor: Colors.blueAccent,
            title: 'New massage',
            icon: Icons.edit,
            iconColor: Colors.white,
            textColor: Colors.white,
            elevation: 0,
          ),
          const SizedBox(height: 17,),
          myButton(
            bgColor: Colors.grey.shade100,
            title: 'Get message',
            icon: Icons.downloading_rounded ,
            elevation: 4,
            iconColor: Colors.black,
            textColor: Colors.black,
          ),

           SizedBox(height: 20,),
         
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.inbox),
                  title: Text('Inbox'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(),
                ),
                ListTile(
                  leading: Icon(Icons.send),
                  title: Text('Send'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(),
                ),
                ListTile(
                  leading: Icon(Icons.drafts),
                  title: Text('Draft'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(),
                ),
                ListTile(
                  leading: Icon(Icons.delete_outline),
                  title: Text('Deleted'),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 40,
          ),
           
          Container(
            child: Column(
              children: [
                bookMark(
                  iconColor: Colors.deepPurple,
                  text: 'Design',
                ),
                bookMark(
                  iconColor: Colors.pink,
                  text: 'work',
                ),
                bookMark(
                  iconColor: Colors.green,
                  text: 'Friends',
                ),
                bookMark(
                  iconColor: Colors.red,
                  text: 'Family',
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}

class bookMark extends StatelessWidget {
  final String text;
  final Color iconColor;
  const bookMark({
    super.key,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.bookmark,color: iconColor),
       title: Text(text,style: TextStyle(
         color: Colors.grey[600],
       ),),
    );
  }
}



