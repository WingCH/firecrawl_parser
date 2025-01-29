// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crawl_result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrawlResultItemImpl _$$CrawlResultItemImplFromJson(
        Map<String, dynamic> json) =>
    _$CrawlResultItemImpl(
      html: json['html'] as String?,
      links:
          (json['links'] as List<dynamic>?)?.map((e) => e as String).toList(),
      markdown: json['markdown'] as String?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CrawlResultItemImplToJson(
        _$CrawlResultItemImpl instance) =>
    <String, dynamic>{
      'html': instance.html,
      'links': instance.links,
      'markdown': instance.markdown,
      'metadata': instance.metadata,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      url: json['url'] as String?,
      ogUrl: json['og:url'] as String?,
      title: json['title'] as String?,
      ogtype: json['og:type'] as String?,
      ogImage: json['og:image'] as String?,
      ogTitle: json['og:title'] as String?,
      language: json['language'] as String?,
      ogimage: json['ogimage'] as String?,
      ogtitle: json['ogtitle'] as String?,
      ogLocale: json['og:locale'] as String?,
      scrapeId: json['scrapeId'] as String?,
      viewport: json['viewport'] as String?,
      generator: (json['generator'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      oglocale: json['oglocale'] as String?,
      sourceURL: json['sourceURL'] as String?,
      ogSiteName: json['og:site_name'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      description: json['description'] as String?,
      ogsiteName: json['ogsiteName'] as String?,
      twitterCard: json['twitter:card'] as String?,
      ogDescription: json['og:description'] as String?,
      twitterImage: json['twitter:image'] as String?,
      ogdescription: json['ogdescription'] as String?,
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'og:url': instance.ogUrl,
      'title': instance.title,
      'og:type': instance.ogtype,
      'og:image': instance.ogImage,
      'og:title': instance.ogTitle,
      'language': instance.language,
      'ogimage': instance.ogimage,
      'ogtitle': instance.ogtitle,
      'og:locale': instance.ogLocale,
      'scrapeId': instance.scrapeId,
      'viewport': instance.viewport,
      'generator': instance.generator,
      'oglocale': instance.oglocale,
      'sourceURL': instance.sourceURL,
      'og:site_name': instance.ogSiteName,
      'statusCode': instance.statusCode,
      'description': instance.description,
      'ogsiteName': instance.ogsiteName,
      'twitter:card': instance.twitterCard,
      'og:description': instance.ogDescription,
      'twitter:image': instance.twitterImage,
      'ogdescription': instance.ogdescription,
    };
