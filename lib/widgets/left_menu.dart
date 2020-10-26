import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3e6e3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 30, right: 30),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text("/Post"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text("/Post/id"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
