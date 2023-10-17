import 'package:flutter/foundation.dart';

@immutable
abstract class NewsEvents {}

class GetNewsEvent extends NewsEvents {
  final String section;
  GetNewsEvent(this.section);
}

class SearchNewsEvent extends NewsEvents {
  final String value;
  SearchNewsEvent(this.value);
}

class ChangeIsSearch extends NewsEvents {
  ChangeIsSearch();
}
class ChangeIsListView extends NewsEvents {
  ChangeIsListView();
}
