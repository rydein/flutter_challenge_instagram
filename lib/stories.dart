import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
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
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                Widget alt = Text('New!!', style: TextStyle(fontSize: 12.0));
                List<Widget> stackList = [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://scontent-nrt1-1.cdninstagram.com/vp/b8374efc66c3051de20aa9aa297269bf/5CAAEA9A/t51.2885-19/s150x150/18580897_1193727374087893_6458706823984709632_a.jpg'),
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
