import 'package:flutter/material.dart';
import 'package:flutter_challenge_instagram/model/user.dart';

class Stories extends StatelessWidget {
  final List<User> userList = userDataList.map((item) {
    return User(item[0], item[1]);
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      height: 105.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: userList.length,
              itemBuilder: (BuildContext context, int index) {
                User user = userList[index];
                Widget alt = Text(user.name, style: TextStyle(fontSize: 12.0));
                List<Widget> stackList = [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(user.avatar),
                  )
                ];
                if (index == 0) {
                  alt = Text(
                    'ストーリーズ',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  );
                  stackList.add(CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 10.0,
                    child: new Icon(Icons.add, size: 14.0, color: Colors.white),
                  ));
                }

                return Container(
                  width: 82.0,
                  padding: EdgeInsets.fromLTRB(9.0, 10.0, 0, 10.0),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: stackList,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.0),
                      ),
                      alt,
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
