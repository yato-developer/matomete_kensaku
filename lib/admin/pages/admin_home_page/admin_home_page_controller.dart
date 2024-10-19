import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matomete_kensaku/admin/services/fire_add_url_services.dart';
import 'package:matomete_kensaku/models/enum.dart';

part 'admin_home_page_controller.freezed.dart';

@freezed
class AdminHomePageState with _$AdminHomePageState {
  const factory AdminHomePageState({
    CategoryType? category,
  }) = _AdminHomePageState;
}

final adminHomePageProvider = StateNotifierProvider.autoDispose<
    AdminHomePageController, AdminHomePageState>((ref) {
  return AdminHomePageController();
});

class AdminHomePageController extends StateNotifier<AdminHomePageState> {
  AdminHomePageController() : super(const AdminHomePageState());

  final _fireService = FireAddUrlServices();

  Future<void> addUrl(title, url) async {
    _fireService.addUrl(state.category!.name, title, url);
  }

  Future<void> setCategory(CategoryType? category) async {
    state = state.copyWith(category: category);
  }
}
