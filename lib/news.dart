import 'package:flutter/material.dart';
import 'package:flutter_challenge_instagram/stories.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Stories();
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
                            'https://scontent-nrt1-1.cdninstagram.com/vp/130f2dad4e838eaa4c5d2248f0494e39/5CAB8BB7/t51.2885-19/s150x150/18162099_299124070517112_2766850178697658368_a.jpg'),
                      ),
                    ),
                    Text(
                      'officialtriumph',
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
              'https://scontent-nrt1-1.cdninstagram.com/vp/55ffb23c99411595d74ef3cb6d208b19/5CB1ADBD/t51.2885-15/fr/e15/s1080x1080/44323369_344314379451202_1678689935479149464_n.jpg',
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
                'The 1200cc Speed Twin; combining Triumph’s Street Twin modern custom style, all the comfort and timeless DNA of the',
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
