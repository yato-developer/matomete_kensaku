import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_info.freezed.dart';
part 'link_info.g.dart';

@freezed
class LinkInfo with _$LinkInfo {
  const factory LinkInfo({
    required String title,
    required String url

  }) = _LinkInfo;

  factory LinkInfo.fromJson(Map<String, dynamic> json) => _$LinkInfoFromJson(json);
}