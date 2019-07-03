import 'package:final_exam_osg/detail_page.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class ListViewPosts extends StatelessWidget {
  final List<Root> roots;
  final List<CardImages> cardImages;

  ListViewPosts({Key key, this.roots, this.cardImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: roots.length,
        padding: const EdgeInsets.all(15.0),
        itemBuilder: (context, position) {
          return Column(
            children: <Widget>[
              new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        '${roots[position].cardImages[0].imageUrlSmall}'),
                  ),
                  title: new Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text(
                      '${roots[position].name}',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: new Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text('${roots[position].desc}'),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => onTapItem(context, roots[position]),
                  selected: true,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void onTapItem(BuildContext context, Root post) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(
              roots: post,
            ),
      ),
    );
  }
}
