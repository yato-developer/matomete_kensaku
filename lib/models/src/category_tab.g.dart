// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryTabImpl _$$CategoryTabImplFromJson(Map<String, dynamic> json) =>
    _$CategoryTabImpl(
      tabName: json['tabName'] as String,
      externalUrls: (json['externalUrls'] as List<dynamic>)
          .map((e) => ExternalUrls.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryTabImplToJson(_$CategoryTabImpl instance) =>
    <String, dynamic>{
      'tabName': instance.tabName,
      'externalUrls': instance.externalUrls,
    };

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
    };
