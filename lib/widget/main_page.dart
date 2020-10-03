import 'package:change_notifier_sampler/pet/model/pet_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'detail_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final petModel = Provider.of<PetViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifierSampler'),
      ),
      body: Column(
        children: [
          Text(petModel.selectedValue),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                child: Text('🐱'),
                onPressed: () => petModel.changeValueToCat(),
              ),
              RaisedButton(
                child: Text('🐶'),
                onPressed: () => petModel.changeValueToDog(),
              ),
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
                  return DetailPage();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
