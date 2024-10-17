

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_page_controller.freezed.dart';

@freezed
class RootPageState with _$RootPageState {
  const factory RootPageState({
    @Default(0) int tabIndex,
    @Default(0) int currentTabIndex,
  }) = _RootPageState;
}

final rootPageProvider =
    StateNotifierProvider.autoDispose<RootPageController, RootPageState>(
        (ref) => RootPageController());

class RootPageController extends StateNotifier<RootPageState> {
  RootPageController() : super(const RootPageState());

  void changeTab(int index) {
    state = state.copyWith(tabIndex: index);
  }

  void setCurrentTabIndex(int index) {
    state = state.copyWith(currentTabIndex: index);
  }
}
