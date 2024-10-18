import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matomete_kensaku/services/tab_service.dart';

part 'add_url_page_controller.freezed.dart';

@freezed
class AddUrlPageState with _$AddUrlPageState {
  const factory AddUrlPageState() = _AddUrlPageState;
}

final addUrlPageProvider =
    StateNotifierProvider.autoDispose<AddUrlPageController, AddUrlPageState>(
        (ref) {
  return AddUrlPageController();
});

class AddUrlPageController extends StateNotifier<AddUrlPageState> {
  AddUrlPageController() : super(const AddUrlPageState());

  CategoryTabService tabService = CategoryTabService();

  Future<void> addItemToTab(int index,String title, String url) async {

    tabService.addItemToTab(index, title, url);
  }
}
