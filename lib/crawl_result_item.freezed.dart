// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crawl_result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CrawlResultItem _$CrawlResultItemFromJson(Map<String, dynamic> json) {
  return _CrawlResultItem.fromJson(json);
}

/// @nodoc
mixin _$CrawlResultItem {
  String? get html => throw _privateConstructorUsedError;
  List<String>? get links => throw _privateConstructorUsedError;
  String? get markdown => throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;

  /// Serializes this CrawlResultItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CrawlResultItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CrawlResultItemCopyWith<CrawlResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrawlResultItemCopyWith<$Res> {
  factory $CrawlResultItemCopyWith(
          CrawlResultItem value, $Res Function(CrawlResultItem) then) =
      _$CrawlResultItemCopyWithImpl<$Res, CrawlResultItem>;
  @useResult
  $Res call(
      {String? html,
      List<String>? links,
      String? markdown,
      Metadata? metadata});

  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$CrawlResultItemCopyWithImpl<$Res, $Val extends CrawlResultItem>
    implements $CrawlResultItemCopyWith<$Res> {
  _$CrawlResultItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CrawlResultItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = freezed,
    Object? links = freezed,
    Object? markdown = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      markdown: freezed == markdown
          ? _value.markdown
          : markdown // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ) as $Val);
  }

  /// Create a copy of CrawlResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CrawlResultItemImplCopyWith<$Res>
    implements $CrawlResultItemCopyWith<$Res> {
  factory _$$CrawlResultItemImplCopyWith(_$CrawlResultItemImpl value,
          $Res Function(_$CrawlResultItemImpl) then) =
      __$$CrawlResultItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? html,
      List<String>? links,
      String? markdown,
      Metadata? metadata});

  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$CrawlResultItemImplCopyWithImpl<$Res>
    extends _$CrawlResultItemCopyWithImpl<$Res, _$CrawlResultItemImpl>
    implements _$$CrawlResultItemImplCopyWith<$Res> {
  __$$CrawlResultItemImplCopyWithImpl(
      _$CrawlResultItemImpl _value, $Res Function(_$CrawlResultItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CrawlResultItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = freezed,
    Object? links = freezed,
    Object? markdown = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CrawlResultItemImpl(
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      markdown: freezed == markdown
          ? _value.markdown
          : markdown // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrawlResultItemImpl implements _CrawlResultItem {
  const _$CrawlResultItemImpl(
      {this.html, final List<String>? links, this.markdown, this.metadata})
      : _links = links;

  factory _$CrawlResultItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrawlResultItemImplFromJson(json);

  @override
  final String? html;
  final List<String>? _links;
  @override
  List<String>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? markdown;
  @override
  final Metadata? metadata;

  @override
  String toString() {
    return 'CrawlResultItem(html: $html, links: $links, markdown: $markdown, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrawlResultItemImpl &&
            (identical(other.html, html) || other.html == html) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.markdown, markdown) ||
                other.markdown == markdown) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, html,
      const DeepCollectionEquality().hash(_links), markdown, metadata);

  /// Create a copy of CrawlResultItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrawlResultItemImplCopyWith<_$CrawlResultItemImpl> get copyWith =>
      __$$CrawlResultItemImplCopyWithImpl<_$CrawlResultItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrawlResultItemImplToJson(
      this,
    );
  }
}

abstract class _CrawlResultItem implements CrawlResultItem {
  const factory _CrawlResultItem(
      {final String? html,
      final List<String>? links,
      final String? markdown,
      final Metadata? metadata}) = _$CrawlResultItemImpl;

  factory _CrawlResultItem.fromJson(Map<String, dynamic> json) =
      _$CrawlResultItemImpl.fromJson;

  @override
  String? get html;
  @override
  List<String>? get links;
  @override
  String? get markdown;
  @override
  Metadata? get metadata;

  /// Create a copy of CrawlResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrawlResultItemImplCopyWith<_$CrawlResultItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'og:url')
  String? get ogUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'og:type')
  String? get ogtype => throw _privateConstructorUsedError;
  @JsonKey(name: 'og:image')
  String? get ogImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'og:title')
  String? get ogTitle => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get ogimage => throw _privateConstructorUsedError;
  String? get ogtitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'og:locale')
  String? get ogLocale => throw _privateConstructorUsedError;
  String? get scrapeId => throw _privateConstructorUsedError;
  String? get viewport => throw _privateConstructorUsedError;
  List<String>? get generator => throw _privateConstructorUsedError;
  String? get oglocale => throw _privateConstructorUsedError;
  @JsonKey(name: 'sourceURL')
  String? get sourceURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'og:site_name')
  String? get ogSiteName => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get ogsiteName => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter:card')
  String? get twitterCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'og:description')
  String? get ogDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter:image')
  String? get twitterImage => throw _privateConstructorUsedError;
  String? get ogdescription => throw _privateConstructorUsedError;

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call(
      {String? url,
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
      String? ogdescription});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? ogUrl = freezed,
    Object? title = freezed,
    Object? ogtype = freezed,
    Object? ogImage = freezed,
    Object? ogTitle = freezed,
    Object? language = freezed,
    Object? ogimage = freezed,
    Object? ogtitle = freezed,
    Object? ogLocale = freezed,
    Object? scrapeId = freezed,
    Object? viewport = freezed,
    Object? generator = freezed,
    Object? oglocale = freezed,
    Object? sourceURL = freezed,
    Object? ogSiteName = freezed,
    Object? statusCode = freezed,
    Object? description = freezed,
    Object? ogsiteName = freezed,
    Object? twitterCard = freezed,
    Object? ogDescription = freezed,
    Object? twitterImage = freezed,
    Object? ogdescription = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      ogUrl: freezed == ogUrl
          ? _value.ogUrl
          : ogUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ogtype: freezed == ogtype
          ? _value.ogtype
          : ogtype // ignore: cast_nullable_to_non_nullable
              as String?,
      ogImage: freezed == ogImage
          ? _value.ogImage
          : ogImage // ignore: cast_nullable_to_non_nullable
              as String?,
      ogTitle: freezed == ogTitle
          ? _value.ogTitle
          : ogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      ogimage: freezed == ogimage
          ? _value.ogimage
          : ogimage // ignore: cast_nullable_to_non_nullable
              as String?,
      ogtitle: freezed == ogtitle
          ? _value.ogtitle
          : ogtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      ogLocale: freezed == ogLocale
          ? _value.ogLocale
          : ogLocale // ignore: cast_nullable_to_non_nullable
              as String?,
      scrapeId: freezed == scrapeId
          ? _value.scrapeId
          : scrapeId // ignore: cast_nullable_to_non_nullable
              as String?,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as String?,
      generator: freezed == generator
          ? _value.generator
          : generator // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      oglocale: freezed == oglocale
          ? _value.oglocale
          : oglocale // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceURL: freezed == sourceURL
          ? _value.sourceURL
          : sourceURL // ignore: cast_nullable_to_non_nullable
              as String?,
      ogSiteName: freezed == ogSiteName
          ? _value.ogSiteName
          : ogSiteName // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ogsiteName: freezed == ogsiteName
          ? _value.ogsiteName
          : ogsiteName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterCard: freezed == twitterCard
          ? _value.twitterCard
          : twitterCard // ignore: cast_nullable_to_non_nullable
              as String?,
      ogDescription: freezed == ogDescription
          ? _value.ogDescription
          : ogDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterImage: freezed == twitterImage
          ? _value.twitterImage
          : twitterImage // ignore: cast_nullable_to_non_nullable
              as String?,
      ogdescription: freezed == ogdescription
          ? _value.ogdescription
          : ogdescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
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
      String? ogdescription});
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? ogUrl = freezed,
    Object? title = freezed,
    Object? ogtype = freezed,
    Object? ogImage = freezed,
    Object? ogTitle = freezed,
    Object? language = freezed,
    Object? ogimage = freezed,
    Object? ogtitle = freezed,
    Object? ogLocale = freezed,
    Object? scrapeId = freezed,
    Object? viewport = freezed,
    Object? generator = freezed,
    Object? oglocale = freezed,
    Object? sourceURL = freezed,
    Object? ogSiteName = freezed,
    Object? statusCode = freezed,
    Object? description = freezed,
    Object? ogsiteName = freezed,
    Object? twitterCard = freezed,
    Object? ogDescription = freezed,
    Object? twitterImage = freezed,
    Object? ogdescription = freezed,
  }) {
    return _then(_$MetadataImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      ogUrl: freezed == ogUrl
          ? _value.ogUrl
          : ogUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ogtype: freezed == ogtype
          ? _value.ogtype
          : ogtype // ignore: cast_nullable_to_non_nullable
              as String?,
      ogImage: freezed == ogImage
          ? _value.ogImage
          : ogImage // ignore: cast_nullable_to_non_nullable
              as String?,
      ogTitle: freezed == ogTitle
          ? _value.ogTitle
          : ogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      ogimage: freezed == ogimage
          ? _value.ogimage
          : ogimage // ignore: cast_nullable_to_non_nullable
              as String?,
      ogtitle: freezed == ogtitle
          ? _value.ogtitle
          : ogtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      ogLocale: freezed == ogLocale
          ? _value.ogLocale
          : ogLocale // ignore: cast_nullable_to_non_nullable
              as String?,
      scrapeId: freezed == scrapeId
          ? _value.scrapeId
          : scrapeId // ignore: cast_nullable_to_non_nullable
              as String?,
      viewport: freezed == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as String?,
      generator: freezed == generator
          ? _value._generator
          : generator // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      oglocale: freezed == oglocale
          ? _value.oglocale
          : oglocale // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceURL: freezed == sourceURL
          ? _value.sourceURL
          : sourceURL // ignore: cast_nullable_to_non_nullable
              as String?,
      ogSiteName: freezed == ogSiteName
          ? _value.ogSiteName
          : ogSiteName // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ogsiteName: freezed == ogsiteName
          ? _value.ogsiteName
          : ogsiteName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterCard: freezed == twitterCard
          ? _value.twitterCard
          : twitterCard // ignore: cast_nullable_to_non_nullable
              as String?,
      ogDescription: freezed == ogDescription
          ? _value.ogDescription
          : ogDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterImage: freezed == twitterImage
          ? _value.twitterImage
          : twitterImage // ignore: cast_nullable_to_non_nullable
              as String?,
      ogdescription: freezed == ogdescription
          ? _value.ogdescription
          : ogdescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl(
      {this.url,
      @JsonKey(name: 'og:url') this.ogUrl,
      this.title,
      @JsonKey(name: 'og:type') this.ogtype,
      @JsonKey(name: 'og:image') this.ogImage,
      @JsonKey(name: 'og:title') this.ogTitle,
      this.language,
      this.ogimage,
      this.ogtitle,
      @JsonKey(name: 'og:locale') this.ogLocale,
      this.scrapeId,
      this.viewport,
      final List<String>? generator,
      this.oglocale,
      @JsonKey(name: 'sourceURL') this.sourceURL,
      @JsonKey(name: 'og:site_name') this.ogSiteName,
      this.statusCode,
      this.description,
      this.ogsiteName,
      @JsonKey(name: 'twitter:card') this.twitterCard,
      @JsonKey(name: 'og:description') this.ogDescription,
      @JsonKey(name: 'twitter:image') this.twitterImage,
      this.ogdescription})
      : _generator = generator;

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  final String? url;
  @override
  @JsonKey(name: 'og:url')
  final String? ogUrl;
  @override
  final String? title;
  @override
  @JsonKey(name: 'og:type')
  final String? ogtype;
  @override
  @JsonKey(name: 'og:image')
  final String? ogImage;
  @override
  @JsonKey(name: 'og:title')
  final String? ogTitle;
  @override
  final String? language;
  @override
  final String? ogimage;
  @override
  final String? ogtitle;
  @override
  @JsonKey(name: 'og:locale')
  final String? ogLocale;
  @override
  final String? scrapeId;
  @override
  final String? viewport;
  final List<String>? _generator;
  @override
  List<String>? get generator {
    final value = _generator;
    if (value == null) return null;
    if (_generator is EqualUnmodifiableListView) return _generator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? oglocale;
  @override
  @JsonKey(name: 'sourceURL')
  final String? sourceURL;
  @override
  @JsonKey(name: 'og:site_name')
  final String? ogSiteName;
  @override
  final int? statusCode;
  @override
  final String? description;
  @override
  final String? ogsiteName;
  @override
  @JsonKey(name: 'twitter:card')
  final String? twitterCard;
  @override
  @JsonKey(name: 'og:description')
  final String? ogDescription;
  @override
  @JsonKey(name: 'twitter:image')
  final String? twitterImage;
  @override
  final String? ogdescription;

  @override
  String toString() {
    return 'Metadata(url: $url, ogUrl: $ogUrl, title: $title, ogtype: $ogtype, ogImage: $ogImage, ogTitle: $ogTitle, language: $language, ogimage: $ogimage, ogtitle: $ogtitle, ogLocale: $ogLocale, scrapeId: $scrapeId, viewport: $viewport, generator: $generator, oglocale: $oglocale, sourceURL: $sourceURL, ogSiteName: $ogSiteName, statusCode: $statusCode, description: $description, ogsiteName: $ogsiteName, twitterCard: $twitterCard, ogDescription: $ogDescription, twitterImage: $twitterImage, ogdescription: $ogdescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.ogUrl, ogUrl) || other.ogUrl == ogUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ogtype, ogtype) || other.ogtype == ogtype) &&
            (identical(other.ogImage, ogImage) || other.ogImage == ogImage) &&
            (identical(other.ogTitle, ogTitle) || other.ogTitle == ogTitle) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.ogimage, ogimage) || other.ogimage == ogimage) &&
            (identical(other.ogtitle, ogtitle) || other.ogtitle == ogtitle) &&
            (identical(other.ogLocale, ogLocale) ||
                other.ogLocale == ogLocale) &&
            (identical(other.scrapeId, scrapeId) ||
                other.scrapeId == scrapeId) &&
            (identical(other.viewport, viewport) ||
                other.viewport == viewport) &&
            const DeepCollectionEquality()
                .equals(other._generator, _generator) &&
            (identical(other.oglocale, oglocale) ||
                other.oglocale == oglocale) &&
            (identical(other.sourceURL, sourceURL) ||
                other.sourceURL == sourceURL) &&
            (identical(other.ogSiteName, ogSiteName) ||
                other.ogSiteName == ogSiteName) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.ogsiteName, ogsiteName) ||
                other.ogsiteName == ogsiteName) &&
            (identical(other.twitterCard, twitterCard) ||
                other.twitterCard == twitterCard) &&
            (identical(other.ogDescription, ogDescription) ||
                other.ogDescription == ogDescription) &&
            (identical(other.twitterImage, twitterImage) ||
                other.twitterImage == twitterImage) &&
            (identical(other.ogdescription, ogdescription) ||
                other.ogdescription == ogdescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        url,
        ogUrl,
        title,
        ogtype,
        ogImage,
        ogTitle,
        language,
        ogimage,
        ogtitle,
        ogLocale,
        scrapeId,
        viewport,
        const DeepCollectionEquality().hash(_generator),
        oglocale,
        sourceURL,
        ogSiteName,
        statusCode,
        description,
        ogsiteName,
        twitterCard,
        ogDescription,
        twitterImage,
        ogdescription
      ]);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {final String? url,
      @JsonKey(name: 'og:url') final String? ogUrl,
      final String? title,
      @JsonKey(name: 'og:type') final String? ogtype,
      @JsonKey(name: 'og:image') final String? ogImage,
      @JsonKey(name: 'og:title') final String? ogTitle,
      final String? language,
      final String? ogimage,
      final String? ogtitle,
      @JsonKey(name: 'og:locale') final String? ogLocale,
      final String? scrapeId,
      final String? viewport,
      final List<String>? generator,
      final String? oglocale,
      @JsonKey(name: 'sourceURL') final String? sourceURL,
      @JsonKey(name: 'og:site_name') final String? ogSiteName,
      final int? statusCode,
      final String? description,
      final String? ogsiteName,
      @JsonKey(name: 'twitter:card') final String? twitterCard,
      @JsonKey(name: 'og:description') final String? ogDescription,
      @JsonKey(name: 'twitter:image') final String? twitterImage,
      final String? ogdescription}) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(name: 'og:url')
  String? get ogUrl;
  @override
  String? get title;
  @override
  @JsonKey(name: 'og:type')
  String? get ogtype;
  @override
  @JsonKey(name: 'og:image')
  String? get ogImage;
  @override
  @JsonKey(name: 'og:title')
  String? get ogTitle;
  @override
  String? get language;
  @override
  String? get ogimage;
  @override
  String? get ogtitle;
  @override
  @JsonKey(name: 'og:locale')
  String? get ogLocale;
  @override
  String? get scrapeId;
  @override
  String? get viewport;
  @override
  List<String>? get generator;
  @override
  String? get oglocale;
  @override
  @JsonKey(name: 'sourceURL')
  String? get sourceURL;
  @override
  @JsonKey(name: 'og:site_name')
  String? get ogSiteName;
  @override
  int? get statusCode;
  @override
  String? get description;
  @override
  String? get ogsiteName;
  @override
  @JsonKey(name: 'twitter:card')
  String? get twitterCard;
  @override
  @JsonKey(name: 'og:description')
  String? get ogDescription;
  @override
  @JsonKey(name: 'twitter:image')
  String? get twitterImage;
  @override
  String? get ogdescription;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
