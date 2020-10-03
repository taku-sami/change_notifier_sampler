import 'package:flutter/material.dart';

import 'detail_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String selectedValue = '飼っているペットを選んでください';
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Sampler'),
      ),
      body: Column(
        children: [
          Text(selectedValue),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                  child: Text('🐱'),
                  onPressed: () {
                    setState(() {
                      selectedValue = 'ねこ🐱';
                    });
                  }),
              RaisedButton(
                  child: Text('🐶'),
                  onPressed: () {
                    setState(() {
                      selectedValue = 'いぬ🐶';
                    });
                  }),
            ],
          ),
          FlatButton(
            child: Text(
              '次へ',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailPage(
                    selectedValue: selectedValue,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
