import 'package:flutter/material.dart';
import 'package:flutter_challenge_instagram/news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget>[
          Flexible(child: News()),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      elevation: 1.0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        'Instagram',
        style: TextStyle(
            color: Colors.black, fontFamily: 'Billabong', fontSize: 30.0),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.live_tv,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.send,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                  'https://scontent-nrt1-1.cdninstagram.com/vp/b8374efc66c3051de20aa9aa297269bf/5CAAEA9A/t51.2885-19/s150x150/18580897_1193727374087893_6458706823984709632_a.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
