import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matomete_kensaku/models/src/tab.dart';
import 'package:matomete_kensaku/services/tab_service.dart';

part 'home_page_controller.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(<CategoryTab>[]) List<CategoryTab> tabs,
    @Default("") String searchWord,
  }) = _HomePageState;
}

final homePageProvider =
    StateNotifierProvider.autoDispose<HomePageController, HomePageState>((ref) {
  return HomePageController();
});

class HomePageController extends StateNotifier<HomePageState> {
  HomePageController() : super(const HomePageState()) {
    init();
  }

  CategoryTabService tabService = CategoryTabService();

  Future<void> init() async {
    final tabs = await tabService.loadTabs();
    state = state.copyWith(tabs: tabs);
  }

  void setSearchWord(String text) {
    state = state.copyWith(searchWord: text);
  }

  Future<void> deleteItemFromTab(String tabName, int index) async {
    tabService.deleteItemFromTab(tabName, index);
    init();
  }

  Future<void> updateItemInTab(
      int tabIndex, int itemIndex, String newTitle, String newUrl) async {
    tabService.updateItemInTab(tabIndex, itemIndex, newTitle, newUrl);
    init();
  }

  Future<void> updateTabName(int tabIndex, String newTabName) async {
    tabService.updateTabName(tabIndex, newTabName);
    init();
  }

  Future<void> deleteTab(int tabIndex) async {
    tabService.deleteTab(tabIndex);
    init();
  }

  Future<void> addTab(String tabName) async {
    tabService.addTab(tabName);
    init();
  }

  Future<void> reorderTabs(int oldIndex, int newIndex) async {
    tabService.reorderTabs(oldIndex, newIndex);
  }
}
