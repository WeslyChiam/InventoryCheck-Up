import 'package:flutter/material.dart';

class table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IT-Usaha Inventory'),
      ),
      body: Center(
        //Table
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120),
                border: TableBorder.all(color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('No.', style: TextStyle(fontSize: 20))
                    ]),
                    Column(children: [
                      Text('Inventory Name', style: TextStyle(fontSize: 20))
                    ]),
                    Column(children: [
                      Text('Qty', style: TextStyle(fontSize: 20))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('1', style: TextStyle(fontSize: 20))
                    ]),
                    Column(children: [
                      Text('Sample-00001', style: TextStyle(fontSize: 20))
                    ]),
                    Column(children: [
                      Text('500', style: TextStyle(fontSize: 20))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('2', style: TextStyle(fontSize: 20))
                    ]),
                    Column(children: [
                      Text('Sample-00002', style: TextStyle(fontSize: 20))
                    ]),
                    Column(children: [
                      Text('500', style: TextStyle(fontSize: 20))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('32', style: TextStyle(fontSize: 20))
                    ]),
                    Column(children: [
                      Text('Sample-00003', style: TextStyle(fontSize: 20))
                    ]),
                    Column(children: [
                      Text('500', style: TextStyle(fontSize: 20))
                    ]),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
