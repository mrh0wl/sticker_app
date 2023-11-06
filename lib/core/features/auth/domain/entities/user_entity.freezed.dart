// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(0)
  set id(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(1)
  set firstName(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get lastName => throw _privateConstructorUsedError;
  @HiveField(2)
  set lastName(String value) => throw _privateConstructorUsedError;
  @HiveField(3)
  String get username => throw _privateConstructorUsedError;
  @HiveField(3)
  set username(String value) => throw _privateConstructorUsedError;
  @HiveField(4)
  String get email => throw _privateConstructorUsedError;
  @HiveField(4)
  set email(String value) => throw _privateConstructorUsedError;
  @HiveField(5)
  String get phone => throw _privateConstructorUsedError;
  @HiveField(5)
  set phone(String value) => throw _privateConstructorUsedError;
  @HiveField(6)
  String get photo => throw _privateConstructorUsedError;
  @HiveField(6)
  set photo(String value) =>
      throw _privateConstructorUsedError; // Todo: Use default image from assets folder
  @HiveField(7)
  bool get isAnonymous =>
      throw _privateConstructorUsedError; // Todo: Use default image from assets folder
  @HiveField(7)
  set isAnonymous(bool value) => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(9)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(9)
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(10)
  List<LinkedAccount?> get linkedAccounts => throw _privateConstructorUsedError;
  @HiveField(10)
  set linkedAccounts(List<LinkedAccount?> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) String username,
      @HiveField(4) String email,
      @HiveField(5) String phone,
      @HiveField(6) String photo,
      @HiveField(7) bool isAnonymous,
      @HiveField(8) DateTime? createdAt,
      @HiveField(9) DateTime? updatedAt,
      @HiveField(10) List<LinkedAccount?> linkedAccounts});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? photo = null,
    Object? isAnonymous = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? linkedAccounts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkedAccounts: null == linkedAccounts
          ? _value.linkedAccounts
          : linkedAccounts // ignore: cast_nullable_to_non_nullable
              as List<LinkedAccount?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) String username,
      @HiveField(4) String email,
      @HiveField(5) String phone,
      @HiveField(6) String photo,
      @HiveField(7) bool isAnonymous,
      @HiveField(8) DateTime? createdAt,
      @HiveField(9) DateTime? updatedAt,
      @HiveField(10) List<LinkedAccount?> linkedAccounts});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? photo = null,
    Object? isAnonymous = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? linkedAccounts = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkedAccounts: null == linkedAccounts
          ? _value.linkedAccounts
          : linkedAccounts // ignore: cast_nullable_to_non_nullable
              as List<LinkedAccount?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$UserImpl extends _User {
  _$UserImpl(
      {@HiveField(0) this.id = '',
      @HiveField(1) this.firstName = 'Guest',
      @HiveField(2) this.lastName = '',
      @HiveField(3) required this.username,
      @HiveField(4) required this.email,
      @HiveField(5) required this.phone,
      @HiveField(6) required this.photo,
      @HiveField(7) this.isAnonymous = true,
      @HiveField(8) this.createdAt,
      @HiveField(9) this.updatedAt,
      @HiveField(10) this.linkedAccounts = const []})
      : super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  String id;
  @override
  @JsonKey()
  @HiveField(1)
  String firstName;
  @override
  @JsonKey()
  @HiveField(2)
  String lastName;
  @override
  @HiveField(3)
  String username;
  @override
  @HiveField(4)
  String email;
  @override
  @HiveField(5)
  String phone;
  @override
  @HiveField(6)
  String photo;
// Todo: Use default image from assets folder
  @override
  @JsonKey()
  @HiveField(7)
  bool isAnonymous;
  @override
  @HiveField(8)
  final DateTime? createdAt;
  @override
  @HiveField(9)
  DateTime? updatedAt;
  @override
  @JsonKey()
  @HiveField(10)
  List<LinkedAccount?> linkedAccounts;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, username: $username, email: $email, phone: $phone, photo: $photo, isAnonymous: $isAnonymous, createdAt: $createdAt, updatedAt: $updatedAt, linkedAccounts: $linkedAccounts)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {@HiveField(0) String id,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) required String username,
      @HiveField(4) required String email,
      @HiveField(5) required String phone,
      @HiveField(6) required String photo,
      @HiveField(7) bool isAnonymous,
      @HiveField(8) final DateTime? createdAt,
      @HiveField(9) DateTime? updatedAt,
      @HiveField(10) List<LinkedAccount?> linkedAccounts}) = _$UserImpl;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @HiveField(0)
  set id(String value);
  @override
  @HiveField(1)
  String get firstName;
  @HiveField(1)
  set firstName(String value);
  @override
  @HiveField(2)
  String get lastName;
  @HiveField(2)
  set lastName(String value);
  @override
  @HiveField(3)
  String get username;
  @HiveField(3)
  set username(String value);
  @override
  @HiveField(4)
  String get email;
  @HiveField(4)
  set email(String value);
  @override
  @HiveField(5)
  String get phone;
  @HiveField(5)
  set phone(String value);
  @override
  @HiveField(6)
  String get photo;
  @HiveField(6)
  set photo(String value);
  @override // Todo: Use default image from assets folder
  @HiveField(7)
  bool get isAnonymous; // Todo: Use default image from assets folder
  @HiveField(7)
  set isAnonymous(bool value);
  @override
  @HiveField(8)
  DateTime? get createdAt;
  @override
  @HiveField(9)
  DateTime? get updatedAt;
  @HiveField(9)
  set updatedAt(DateTime? value);
  @override
  @HiveField(10)
  List<LinkedAccount?> get linkedAccounts;
  @HiveField(10)
  set linkedAccounts(List<LinkedAccount?> value);
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
