
import 'package:flutter/cupertino.dart';

class ProviderCounter extends ChangeNotifier {
  void getState() {
    notifyListeners();
  }