import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_term_provider.g.dart';

@riverpod
class SearchTerm extends _$SearchTerm {
  @override
  String build() {
    return '';
  }

  // ignore: use_setters_to_change_properties
  void search(String value) {
    state = value;
  }
}
