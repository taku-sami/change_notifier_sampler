import 'package:change_notifier_sampler/pet/model/pet_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final petModel = Provider.of<PetViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifierSampler'),
      ),
      body: Center(
        child: Text(petModel.selectedValue),
      ),
    );
  }
}
