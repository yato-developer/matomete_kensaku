import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab.freezed.dart';
part 'tab.g.dart';

@freezed
class CategoryTab with _$CategoryTab {
  const factory CategoryTab({
    required String tabName,
    required List<ExternalUrls> externalUrls,
  }) = _CategoryTab;

  factory CategoryTab.fromJson(Map<String, dynamic> json) => _$CategoryTabFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  const factory ExternalUrls({
    required String title,
    required String url,
  }) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
}
