// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoreItems {
  List<HomeStore> get homeStore => throw _privateConstructorUsedError;
  List<BestSeller> get bestSeller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreItemsCopyWith<StoreItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreItemsCopyWith<$Res> {
  factory $StoreItemsCopyWith(
          StoreItems value, $Res Function(StoreItems) then) =
      _$StoreItemsCopyWithImpl<$Res>;
  $Res call({List<HomeStore> homeStore, List<BestSeller> bestSeller});
}

/// @nodoc
class _$StoreItemsCopyWithImpl<$Res> implements $StoreItemsCopyWith<$Res> {
  _$StoreItemsCopyWithImpl(this._value, this._then);

  final StoreItems _value;
  // ignore: unused_field
  final $Res Function(StoreItems) _then;

  @override
  $Res call({
    Object? homeStore = freezed,
    Object? bestSeller = freezed,
  }) {
    return _then(_value.copyWith(
      homeStore: homeStore == freezed
          ? _value.homeStore
          : homeStore // ignore: cast_nullable_to_non_nullable
              as List<HomeStore>,
      bestSeller: bestSeller == freezed
          ? _value.bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as List<BestSeller>,
    ));
  }
}

/// @nodoc
abstract class _$$_StoreItemsCopyWith<$Res>
    implements $StoreItemsCopyWith<$Res> {
  factory _$$_StoreItemsCopyWith(
          _$_StoreItems value, $Res Function(_$_StoreItems) then) =
      __$$_StoreItemsCopyWithImpl<$Res>;
  @override
  $Res call({List<HomeStore> homeStore, List<BestSeller> bestSeller});
}

/// @nodoc
class __$$_StoreItemsCopyWithImpl<$Res> extends _$StoreItemsCopyWithImpl<$Res>
    implements _$$_StoreItemsCopyWith<$Res> {
  __$$_StoreItemsCopyWithImpl(
      _$_StoreItems _value, $Res Function(_$_StoreItems) _then)
      : super(_value, (v) => _then(v as _$_StoreItems));

  @override
  _$_StoreItems get _value => super._value as _$_StoreItems;

  @override
  $Res call({
    Object? homeStore = freezed,
    Object? bestSeller = freezed,
  }) {
    return _then(_$_StoreItems(
      homeStore: homeStore == freezed
          ? _value._homeStore
          : homeStore // ignore: cast_nullable_to_non_nullable
              as List<HomeStore>,
      bestSeller: bestSeller == freezed
          ? _value._bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as List<BestSeller>,
    ));
  }
}

/// @nodoc

class _$_StoreItems implements _StoreItems {
  const _$_StoreItems(
      {required final List<HomeStore> homeStore,
      required final List<BestSeller> bestSeller})
      : _homeStore = homeStore,
        _bestSeller = bestSeller;

  final List<HomeStore> _homeStore;
  @override
  List<HomeStore> get homeStore {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeStore);
  }

  final List<BestSeller> _bestSeller;
  @override
  List<BestSeller> get bestSeller {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSeller);
  }

  @override
  String toString() {
    return 'StoreItems(homeStore: $homeStore, bestSeller: $bestSeller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreItems &&
            const DeepCollectionEquality()
                .equals(other._homeStore, _homeStore) &&
            const DeepCollectionEquality()
                .equals(other._bestSeller, _bestSeller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_homeStore),
      const DeepCollectionEquality().hash(_bestSeller));

  @JsonKey(ignore: true)
  @override
  _$$_StoreItemsCopyWith<_$_StoreItems> get copyWith =>
      __$$_StoreItemsCopyWithImpl<_$_StoreItems>(this, _$identity);
}

abstract class _StoreItems implements StoreItems {
  const factory _StoreItems(
      {required final List<HomeStore> homeStore,
      required final List<BestSeller> bestSeller}) = _$_StoreItems;

  @override
  List<HomeStore> get homeStore;
  @override
  List<BestSeller> get bestSeller;
  @override
  @JsonKey(ignore: true)
  _$$_StoreItemsCopyWith<_$_StoreItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStore {
  int get id => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  bool get isBuy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStoreCopyWith<HomeStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStoreCopyWith<$Res> {
  factory $HomeStoreCopyWith(HomeStore value, $Res Function(HomeStore) then) =
      _$HomeStoreCopyWithImpl<$Res>;
  $Res call(
      {int id,
      bool isNew,
      String title,
      String subtitle,
      String picture,
      bool isBuy});
}

/// @nodoc
class _$HomeStoreCopyWithImpl<$Res> implements $HomeStoreCopyWith<$Res> {
  _$HomeStoreCopyWithImpl(this._value, this._then);

  final HomeStore _value;
  // ignore: unused_field
  final $Res Function(HomeStore) _then;

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
              as bool,
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
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStoreCopyWith<$Res> implements $HomeStoreCopyWith<$Res> {
  factory _$$_HomeStoreCopyWith(
          _$_HomeStore value, $Res Function(_$_HomeStore) then) =
      __$$_HomeStoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      bool isNew,
      String title,
      String subtitle,
      String picture,
      bool isBuy});
}

/// @nodoc
class __$$_HomeStoreCopyWithImpl<$Res> extends _$HomeStoreCopyWithImpl<$Res>
    implements _$$_HomeStoreCopyWith<$Res> {
  __$$_HomeStoreCopyWithImpl(
      _$_HomeStore _value, $Res Function(_$_HomeStore) _then)
      : super(_value, (v) => _then(v as _$_HomeStore));

  @override
  _$_HomeStore get _value => super._value as _$_HomeStore;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? picture = freezed,
    Object? isBuy = freezed,
  }) {
    return _then(_$_HomeStore(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeStore implements _HomeStore {
  const _$_HomeStore(
      {required this.id,
      required this.isNew,
      required this.title,
      required this.subtitle,
      required this.picture,
      required this.isBuy});

  @override
  final int id;
  @override
  final bool isNew;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String picture;
  @override
  final bool isBuy;

  @override
  String toString() {
    return 'HomeStore(id: $id, isNew: $isNew, title: $title, subtitle: $subtitle, picture: $picture, isBuy: $isBuy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStore &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isNew, isNew) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.isBuy, isBuy));
  }

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
  _$$_HomeStoreCopyWith<_$_HomeStore> get copyWith =>
      __$$_HomeStoreCopyWithImpl<_$_HomeStore>(this, _$identity);
}

abstract class _HomeStore implements HomeStore {
  const factory _HomeStore(
      {required final int id,
      required final bool isNew,
      required final String title,
      required final String subtitle,
      required final String picture,
      required final bool isBuy}) = _$_HomeStore;

  @override
  int get id;
  @override
  bool get isNew;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get picture;
  @override
  bool get isBuy;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStoreCopyWith<_$_HomeStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BestSeller {
  int get id => throw _privateConstructorUsedError;
  bool get isFavorites => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get priceWithoutDiscount => throw _privateConstructorUsedError;
  int get discountPrice => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestSellerCopyWith<BestSeller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerCopyWith<$Res> {
  factory $BestSellerCopyWith(
          BestSeller value, $Res Function(BestSeller) then) =
      _$BestSellerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      bool isFavorites,
      String title,
      int priceWithoutDiscount,
      int discountPrice,
      String picture});
}

/// @nodoc
class _$BestSellerCopyWithImpl<$Res> implements $BestSellerCopyWith<$Res> {
  _$BestSellerCopyWithImpl(this._value, this._then);

  final BestSeller _value;
  // ignore: unused_field
  final $Res Function(BestSeller) _then;

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
              as bool,
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
    implements $BestSellerCopyWith<$Res> {
  factory _$$_BestSellerCopyWith(
          _$_BestSeller value, $Res Function(_$_BestSeller) then) =
      __$$_BestSellerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      bool isFavorites,
      String title,
      int priceWithoutDiscount,
      int discountPrice,
      String picture});
}

/// @nodoc
class __$$_BestSellerCopyWithImpl<$Res> extends _$BestSellerCopyWithImpl<$Res>
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
              as bool,
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

class _$_BestSeller implements _BestSeller {
  const _$_BestSeller(
      {required this.id,
      required this.isFavorites,
      required this.title,
      required this.priceWithoutDiscount,
      required this.discountPrice,
      required this.picture});

  @override
  final int id;
  @override
  final bool isFavorites;
  @override
  final String title;
  @override
  final int priceWithoutDiscount;
  @override
  final int discountPrice;
  @override
  final String picture;

  @override
  String toString() {
    return 'BestSeller(id: $id, isFavorites: $isFavorites, title: $title, priceWithoutDiscount: $priceWithoutDiscount, discountPrice: $discountPrice, picture: $picture)';
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
}

abstract class _BestSeller implements BestSeller {
  const factory _BestSeller(
      {required final int id,
      required final bool isFavorites,
      required final String title,
      required final int priceWithoutDiscount,
      required final int discountPrice,
      required final String picture}) = _$_BestSeller;

  @override
  int get id;
  @override
  bool get isFavorites;
  @override
  String get title;
  @override
  int get priceWithoutDiscount;
  @override
  int get discountPrice;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$_BestSellerCopyWith<_$_BestSeller> get copyWith =>
      throw _privateConstructorUsedError;
}
