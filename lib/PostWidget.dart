import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_post/PostData.dart';

class PostWidget extends StatefulWidget {
  const PostWidget(
      {Key key,
        @required this.postData,
        // @required this.onPressed
      })
      : super(key: key);

  final PostData postData;
  @override
  _ItemWidgetWidgetState createState() => _ItemWidgetWidgetState(postData);
}

class _ItemWidgetWidgetState extends State<PostWidget> {
   PostData postData;

  _ItemWidgetWidgetState(this.postData);

  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              blurRadius: 50,
              color: Theme.of(context).hintColor.withOpacity(0.2),

            ),
          ]),
      child: Padding(
          padding: EdgeInsets.all(10),
          child: new Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: new Row(
                    children: [
                      SizedBox(width: 10,),
                      ClipRRect(
                        borderRadius: BorderRadius.all( Radius.circular(100)),
                        child: CachedNetworkImage(
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                          imageUrl: postData.phohtUrl
                          ,placeholder: (context, url) => Image.asset(
                            'assets/img/loading.gif',
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      ),
                      SizedBox(width: 10,)
                      ,
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: [Text(postData.name),
                          Text("منذ عشر دقائق",style: TextStyle(color: Colors.black54),)],
                      )
                    ],
                  )
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 50,
                        color: Colors.blue.withOpacity(0.2),
                      ),
                    ]),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.ltr,
                      children: [Text(postData.postMsg),
                        Divider(color: Colors.black,),
                        new Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(width: 10,),
                            Text(postData.communication)

                          ],
                        )
                      ],
                    )
                ),
              )
            ],
          )),
    );
  }
}
