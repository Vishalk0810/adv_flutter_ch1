import 'package:adv_flutter_ch1/screens/lecture%201.5/view/home_screen.dart';
import 'package:adv_flutter_ch1/utils/list.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  String? quote;
  String? author;

  void addDetailsInProvider() {
    quote = txtquote.text;
    author = txtauthor.text;
  }

  void addQuoteInList() {
    quoteList.insert(0, {'quote': quote, 'author': author});
    notifyListeners();
  }

  void removeQuoteAtIndex(int index) {
    quoteList.removeAt(index);
    notifyListeners();
  }
}
