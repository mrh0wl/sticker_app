// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingEntity {
  String get title => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingEntityCopyWith<OnboardingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEntityCopyWith<$Res> {
  factory $OnboardingEntityCopyWith(
          OnboardingEntity value, $Res Function(OnboardingEntity) then) =
      _$OnboardingEntityCopyWithImpl<$Res, OnboardingEntity>;
  @useResult
  $Res call({String title, String desc, String image});
}

/// @nodoc
class _$OnboardingEntityCopyWithImpl<$Res, $Val extends OnboardingEntity>
    implements $OnboardingEntityCopyWith<$Res> {
  _$OnboardingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? desc = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingEntityImplCopyWith<$Res>
    implements $OnboardingEntityCopyWith<$Res> {
  factory _$$OnboardingEntityImplCopyWith(_$OnboardingEntityImpl value,
          $Res Function(_$OnboardingEntityImpl) then) =
      __$$OnboardingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String desc, String image});
}

/// @nodoc
class __$$OnboardingEntityImplCopyWithImpl<$Res>
    extends _$OnboardingEntityCopyWithImpl<$Res, _$OnboardingEntityImpl>
    implements _$$OnboardingEntityImplCopyWith<$Res> {
  __$$OnboardingEntityImplCopyWithImpl(_$OnboardingEntityImpl _value,
      $Res Function(_$OnboardingEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? desc = null,
    Object? image = null,
  }) {
    return _then(_$OnboardingEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnboardingEntityImpl implements _OnboardingEntity {
  const _$OnboardingEntityImpl(
      {required this.title, required this.desc, required this.image});

  @override
  final String title;
  @override
  final String desc;
  @override
  final String image;

  @override
  String toString() {
    return 'OnboardingEntity(title: $title, desc: $desc, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, desc, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingEntityImplCopyWith<_$OnboardingEntityImpl> get copyWith =>
      __$$OnboardingEntityImplCopyWithImpl<_$OnboardingEntityImpl>(
          this, _$identity);
}

abstract class _OnboardingEntity implements OnboardingEntity {
  const factory _OnboardingEntity(
      {required final String title,
      required final String desc,
      required final String image}) = _$OnboardingEntityImpl;

  @override
  String get title;
  @override
  String get desc;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingEntityImplCopyWith<_$OnboardingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
