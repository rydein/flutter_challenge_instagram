import 'package:flutter/material.dart';
import 'package:flutter_challenge_instagram/stories.dart';
import 'package:flutter_challenge_instagram/model/post.dart';

class News extends StatelessWidget {
  final List<Post> postList = postDataList.map((item) {
    return Post(item[0], item[1]);
  }).toList();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postList.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Stories();
        }
        if (index >= postList.length) {
          return null;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent-nrt1-1.cdninstagram.com/vp/b8374efc66c3051de20aa9aa297269bf/5CAAEA9A/t51.2885-19/s150x150/18580897_1193727374087893_6458706823984709632_a.jpg'),
                      ),
                    ),
                    Text(
                      'diceku',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Icon(Icons.more_horiz),
                ),
              ],
            ),
            Image.network(
              postList[index].image,
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.chat_bubble_outline),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
              child: Text(
                'いいね！18,704件',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 5.0),
              child: Text(
                'account name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Text(
                'Mount Fuji located on Honshū, is the highest mountain in Japan at 3,776.24 m (12,389 ft), 2nd-highest peak of an island (volcanic) in Asia, and 7th-highest peak of an island in the world.',
                softWrap: true,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 12.0,
                    backgroundImage: NetworkImage(
                        'https://scontent-nrt1-1.cdninstagram.com/vp/b8374efc66c3051de20aa9aa297269bf/5CAAEA9A/t51.2885-19/s150x150/18580897_1193727374087893_6458706823984709632_a.jpg'),
                  ),
                  Padding(padding: EdgeInsets.only(right: 6.0)),
                  Text(
                    'コメント...',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
