import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  DetailPage({this.selectedValue});
  final String selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifierSampler'),
      ),
      body: Center(
        child: Text(selectedValue),
      ),
    );
  }
}
