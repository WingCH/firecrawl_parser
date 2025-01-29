import 'package:freezed_annotation/freezed_annotation.dart';
part 'crawl_result_item.freezed.dart';
part 'crawl_result_item.g.dart';

@freezed
class CrawlResultItem with _$CrawlResultItem {
  const factory CrawlResultItem({
    String? html,
    List<String>? links,
    String? markdown,
    Metadata? metadata,
  }) = _CrawlResultItem;

  factory CrawlResultItem.fromJson(Map<String, Object?> json) =>
      _$CrawlResultItemFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    String? url,
    @JsonKey(name: 'og:url') String? ogUrl,
    String? title,
    @JsonKey(name: 'og:type') String? ogtype,
    @JsonKey(name: 'og:image') String? ogImage,
    @JsonKey(name: 'og:title') String? ogTitle,
    String? language,
    String? ogimage,
    String? ogtitle,
    @JsonKey(name: 'og:locale') String? ogLocale,
    String? scrapeId,
    String? viewport,
    List<String>? generator,
    String? oglocale,
    @JsonKey(name: 'sourceURL') String? sourceURL,
    @JsonKey(name: 'og:site_name') String? ogSiteName,
    int? statusCode,
    String? description,
    String? ogsiteName,
    @JsonKey(name: 'twitter:card') String? twitterCard,
    @JsonKey(name: 'og:description') String? ogDescription,
    @JsonKey(name: 'twitter:image') String? twitterImage,
    String? ogdescription,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, Object?> json) =>
      _$MetadataFromJson(json);
}
