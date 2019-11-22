import 'package:flutter/material.dart';



class trans_details extends StatefulWidget {

  var items;
  trans_details(this.items);

  @override
  _trans_detailsState createState() => _trans_detailsState(this.items);
}

class _trans_detailsState extends State<trans_details> {
  var items;
  _trans_detailsState(this.items);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(items.enTrans),
            Divider(),
            Text(items.bnTrans),
            Divider(),

          ],
        ),
      ),
    );
  }
}

