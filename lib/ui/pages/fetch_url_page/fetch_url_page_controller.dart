import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matomete_kensaku/models/src/link_info.dart';
import 'package:matomete_kensaku/services/fire_fetch_url_service.dart';
import 'package:matomete_kensaku/services/tab_service.dart';

part 'fetch_url_page_controller.freezed.dart';

@freezed
class FetchUrlPageState with _$FetchUrlPageState {
  const factory FetchUrlPageState({
    @Default([]) List<LinkInfo> linkInfo,
  }) = _FetchUrlPageState;
}

final fetchUrlPageProvider = StateNotifierProvider.autoDispose<
    FetchUrlPageController,
    FetchUrlPageState>((ref) => FetchUrlPageController());

class FetchUrlPageController extends StateNotifier<FetchUrlPageState> {
  FetchUrlPageController() : super(const FetchUrlPageState());

  final _fireService = FireFetchUrlService();
  final tabService = CategoryTabService();

  Future<void> fetchUrlRequest(String category) async {
    final linkInfo = await _fireService.fetchUrlRequest(category);
    state = state.copyWith(linkInfo: linkInfo);
  }

  Future<void> addItemToTab(int index, String title, String url) async {
    tabService.addItemToTab(index, title, url);
  }
}
