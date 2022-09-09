// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreResponse _$StoreResponseFromJson(Map<String, dynamic> json) {
  return _StoreResponse.fromJson(json);
}

/// @nodoc
mixin _$StoreResponse {
  @JsonKey(name: 'home_store')
  List<HomeResponse> get homeStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_seller')
  List<BestSellerResponse> get bestSeller => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreResponseCopyWith<StoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreResponseCopyWith<$Res> {
  factory $StoreResponseCopyWith(
          StoreResponse value, $Res Function(StoreResponse) then) =
      _$StoreResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'home_store') List<HomeResponse> homeStore,
      @JsonKey(name: 'best_seller') List<BestSellerResponse> bestSeller});
}

/// @nodoc
class _$StoreResponseCopyWithImpl<$Res>
    implements $StoreResponseCopyWith<$Res> {
  _$StoreResponseCopyWithImpl(this._value, this._then);

  final StoreResponse _value;
  // ignore: unused_field
  final $Res Function(StoreResponse) _then;

  @override
  $Res call({
    Object? homeStore = freezed,
    Object? bestSeller = freezed,
  }) {
    return _then(_value.copyWith(
      homeStore: homeStore == freezed
          ? _value.homeStore
          : homeStore // ignore: cast_nullable_to_non_nullable
              as List<HomeResponse>,
      bestSeller: bestSeller == freezed
          ? _value.bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as List<BestSellerResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_StoreResponseCopyWith<$Res>
    implements $StoreResponseCopyWith<$Res> {
  factory _$$_StoreResponseCopyWith(
          _$_StoreResponse value, $Res Function(_$_StoreResponse) then) =
      __$$_StoreResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'home_store') List<HomeResponse> homeStore,
      @JsonKey(name: 'best_seller') List<BestSellerResponse> bestSeller});
}

/// @nodoc
class __$$_StoreResponseCopyWithImpl<$Res>
    extends _$StoreResponseCopyWithImpl<$Res>
    implements _$$_StoreResponseCopyWith<$Res> {
  __$$_StoreResponseCopyWithImpl(
      _$_StoreResponse _value, $Res Function(_$_StoreResponse) _then)
      : super(_value, (v) => _then(v as _$_StoreResponse));

  @override
  _$_StoreResponse get _value => super._value as _$_StoreResponse;

  @override
  $Res call({
    Object? homeStore = freezed,
    Object? bestSeller = freezed,
  }) {
    return _then(_$_StoreResponse(
      homeStore: homeStore == freezed
          ? _value._homeStore
          : homeStore // ignore: cast_nullable_to_non_nullable
              as List<HomeResponse>,
      bestSeller: bestSeller == freezed
          ? _value._bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as List<BestSellerResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreResponse implements _StoreResponse {
  const _$_StoreResponse(
      {@JsonKey(name: 'home_store')
          required final List<HomeResponse> homeStore,
      @JsonKey(name: 'best_seller')
          required final List<BestSellerResponse> bestSeller})
      : _homeStore = homeStore,
        _bestSeller = bestSeller;

  factory _$_StoreResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StoreResponseFromJson(json);

  final List<HomeResponse> _homeStore;
  @override
  @JsonKey(name: 'home_store')
  List<HomeResponse> get homeStore {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeStore);
  }

  final List<BestSellerResponse> _bestSeller;
  @override
  @JsonKey(name: 'best_seller')
  List<BestSellerResponse> get bestSeller {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSeller);
  }

  @override
  String toString() {
    return 'StoreResponse(homeStore: $homeStore, bestSeller: $bestSeller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreResponse &&
            const DeepCollectionEquality()
                .equals(other._homeStore, _homeStore) &&
            const DeepCollectionEquality()
                .equals(other._bestSeller, _bestSeller));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_homeStore),
      const DeepCollectionEquality().hash(_bestSeller));

  @JsonKey(ignore: true)
  @override
  _$$_StoreResponseCopyWith<_$_StoreResponse> get copyWith =>
      __$$_StoreResponseCopyWithImpl<_$_StoreResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreResponseToJson(
      this,
    );
  }
}

abstract class _StoreResponse implements StoreResponse {
  const factory _StoreResponse(
          {@JsonKey(name: 'home_store')
              required final List<HomeResponse> homeStore,
          @JsonKey(name: 'best_seller')
              required final List<BestSellerResponse> bestSeller}) =
      _$_StoreResponse;

  factory _StoreResponse.fromJson(Map<String, dynamic> json) =
      _$_StoreResponse.fromJson;

  @override
  @JsonKey(name: 'home_store')
  List<HomeResponse> get homeStore;
  @override
  @JsonKey(name: 'best_seller')
  List<BestSellerResponse> get bestSeller;
  @override
  @JsonKey(ignore: true)
  _$$_StoreResponseCopyWith<_$_StoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return _HomeResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_new')
  bool? get isNew => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitle')
  String get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture')
  String get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_buy')
  bool? get isBuy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeResponseCopyWith<HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'is_new') bool? isNew,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'subtitle') String subtitle,
      @JsonKey(name: 'picture') String picture,
      @JsonKey(name: 'is_buy') bool? isBuy});
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res> implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  final HomeResponse _value;
  // ignore: unused_field
  final $Res Function(HomeResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? picture = freezed,
    Object? isBuy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      isBuy: isBuy == freezed
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeResponseCopyWith<$Res>
    implements $HomeResponseCopyWith<$Res> {
  factory _$$_HomeResponseCopyWith(
          _$_HomeResponse value, $Res Function(_$_HomeResponse) then) =
      __$$_HomeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'is_new') bool? isNew,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'subtitle') String subtitle,
      @JsonKey(name: 'picture') String picture,
      @JsonKey(name: 'is_buy') bool? isBuy});
}

/// @nodoc
class __$$_HomeResponseCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res>
    implements _$$_HomeResponseCopyWith<$Res> {
  __$$_HomeResponseCopyWithImpl(
      _$_HomeResponse _value, $Res Function(_$_HomeResponse) _then)
      : super(_value, (v) => _then(v as _$_HomeResponse));

  @override
  _$_HomeResponse get _value => super._value as _$_HomeResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? picture = freezed,
    Object? isBuy = freezed,
  }) {
    return _then(_$_HomeResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      isBuy: isBuy == freezed
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeResponse implements _HomeResponse {
  const _$_HomeResponse(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'is_new') this.isNew,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'subtitle') required this.subtitle,
      @JsonKey(name: 'picture') required this.picture,
      @JsonKey(name: 'is_buy') this.isBuy});

  factory _$_HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'is_new')
  final bool? isNew;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'subtitle')
  final String subtitle;
  @override
  @JsonKey(name: 'picture')
  final String picture;
  @override
  @JsonKey(name: 'is_buy')
  final bool? isBuy;

  @override
  String toString() {
    return 'HomeResponse(id: $id, isNew: $isNew, title: $title, subtitle: $subtitle, picture: $picture, isBuy: $isBuy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isNew, isNew) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.isBuy, isBuy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isNew),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(isBuy));

  @JsonKey(ignore: true)
  @override
  _$$_HomeResponseCopyWith<_$_HomeResponse> get copyWith =>
      __$$_HomeResponseCopyWithImpl<_$_HomeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeResponseToJson(
      this,
    );
  }
}

abstract class _HomeResponse implements HomeResponse {
  const factory _HomeResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'is_new') final bool? isNew,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'subtitle') required final String subtitle,
      @JsonKey(name: 'picture') required final String picture,
      @JsonKey(name: 'is_buy') final bool? isBuy}) = _$_HomeResponse;

  factory _HomeResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'is_new')
  bool? get isNew;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'subtitle')
  String get subtitle;
  @override
  @JsonKey(name: 'picture')
  String get picture;
  @override
  @JsonKey(name: 'is_buy')
  bool? get isBuy;
  @override
  @JsonKey(ignore: true)
  _$$_HomeResponseCopyWith<_$_HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BestSellerResponse _$BestSellerResponseFromJson(Map<String, dynamic> json) {
  return _BestSeller.fromJson(json);
}

/// @nodoc
mixin _$BestSellerResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorites')
  bool? get isFavorites => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_without_discount')
  int get priceWithoutDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_price')
  int get discountPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture')
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestSellerResponseCopyWith<BestSellerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerResponseCopyWith<$Res> {
  factory $BestSellerResponseCopyWith(
          BestSellerResponse value, $Res Function(BestSellerResponse) then) =
      _$BestSellerResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'is_favorites') bool? isFavorites,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'price_without_discount') int priceWithoutDiscount,
      @JsonKey(name: 'discount_price') int discountPrice,
      @JsonKey(name: 'picture') String picture});
}

/// @nodoc
class _$BestSellerResponseCopyWithImpl<$Res>
    implements $BestSellerResponseCopyWith<$Res> {
  _$BestSellerResponseCopyWithImpl(this._value, this._then);

  final BestSellerResponse _value;
  // ignore: unused_field
  final $Res Function(BestSellerResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorites = freezed,
    Object? title = freezed,
    Object? priceWithoutDiscount = freezed,
    Object? discountPrice = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorites: isFavorites == freezed
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priceWithoutDiscount: priceWithoutDiscount == freezed
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BestSellerCopyWith<$Res>
    implements $BestSellerResponseCopyWith<$Res> {
  factory _$$_BestSellerCopyWith(
          _$_BestSeller value, $Res Function(_$_BestSeller) then) =
      __$$_BestSellerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'is_favorites') bool? isFavorites,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'price_without_discount') int priceWithoutDiscount,
      @JsonKey(name: 'discount_price') int discountPrice,
      @JsonKey(name: 'picture') String picture});
}

/// @nodoc
class __$$_BestSellerCopyWithImpl<$Res>
    extends _$BestSellerResponseCopyWithImpl<$Res>
    implements _$$_BestSellerCopyWith<$Res> {
  __$$_BestSellerCopyWithImpl(
      _$_BestSeller _value, $Res Function(_$_BestSeller) _then)
      : super(_value, (v) => _then(v as _$_BestSeller));

  @override
  _$_BestSeller get _value => super._value as _$_BestSeller;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorites = freezed,
    Object? title = freezed,
    Object? priceWithoutDiscount = freezed,
    Object? discountPrice = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_BestSeller(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorites: isFavorites == freezed
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priceWithoutDiscount: priceWithoutDiscount == freezed
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BestSeller implements _BestSeller {
  const _$_BestSeller(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'is_favorites')
          this.isFavorites,
      @JsonKey(name: 'title')
          required this.title,
      @JsonKey(name: 'price_without_discount')
          required this.priceWithoutDiscount,
      @JsonKey(name: 'discount_price')
          required this.discountPrice,
      @JsonKey(name: 'picture')
          required this.picture});

  factory _$_BestSeller.fromJson(Map<String, dynamic> json) =>
      _$$_BestSellerFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'is_favorites')
  final bool? isFavorites;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'price_without_discount')
  final int priceWithoutDiscount;
  @override
  @JsonKey(name: 'discount_price')
  final int discountPrice;
  @override
  @JsonKey(name: 'picture')
  final String picture;

  @override
  String toString() {
    return 'BestSellerResponse(id: $id, isFavorites: $isFavorites, title: $title, priceWithoutDiscount: $priceWithoutDiscount, discountPrice: $discountPrice, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BestSeller &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.isFavorites, isFavorites) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.priceWithoutDiscount, priceWithoutDiscount) &&
            const DeepCollectionEquality()
                .equals(other.discountPrice, discountPrice) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isFavorites),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(priceWithoutDiscount),
      const DeepCollectionEquality().hash(discountPrice),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$$_BestSellerCopyWith<_$_BestSeller> get copyWith =>
      __$$_BestSellerCopyWithImpl<_$_BestSeller>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BestSellerToJson(
      this,
    );
  }
}

abstract class _BestSeller implements BestSellerResponse {
  const factory _BestSeller(
      {@JsonKey(name: 'id')
          required final int id,
      @JsonKey(name: 'is_favorites')
          final bool? isFavorites,
      @JsonKey(name: 'title')
          required final String title,
      @JsonKey(name: 'price_without_discount')
          required final int priceWithoutDiscount,
      @JsonKey(name: 'discount_price')
          required final int discountPrice,
      @JsonKey(name: 'picture')
          required final String picture}) = _$_BestSeller;

  factory _BestSeller.fromJson(Map<String, dynamic> json) =
      _$_BestSeller.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'is_favorites')
  bool? get isFavorites;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'price_without_discount')
  int get priceWithoutDiscount;
  @override
  @JsonKey(name: 'discount_price')
  int get discountPrice;
  @override
  @JsonKey(name: 'picture')
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$_BestSellerCopyWith<_$_BestSeller> get copyWith =>
      throw _privateConstructorUsedError;
}
