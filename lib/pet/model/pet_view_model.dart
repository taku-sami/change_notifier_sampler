import 'package:flutter/cupertino.dart';

class PetViewModel extends ChangeNotifier {
  String selectedValue = '飼っているペットを選んでください';

  void changeValueToCat() {
    selectedValue = 'ねこ🐱';
    notifyListeners();
  }

  void changeValueToDog() {
    selectedValue = 'いぬ🐶';
    notifyListeners();
  }
}
