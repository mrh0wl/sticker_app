// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserImplAdapter extends TypeAdapter<_$UserImpl> {
  @override
  final int typeId = 0;

  @override
  _$UserImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserImpl(
      id: fields[0] as String,
      firstName: fields[1] as String,
      lastName: fields[2] as String,
      username: fields[3] as String,
      email: fields[4] as String,
      phone: fields[5] as String,
      photo: fields[6] as String,
      isAnonymous: fields[7] as bool,
      createdAt: fields[8] as DateTime?,
      updatedAt: fields[9] as DateTime?,
      linkedAccounts: (fields[10] as List).cast<LinkedAccount?>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$UserImpl obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.username)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.phone)
      ..writeByte(6)
      ..write(obj.photo)
      ..writeByte(7)
      ..write(obj.isAnonymous)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.linkedAccounts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String? ?? '',
      firstName: json['firstName'] as String? ?? 'Guest',
      lastName: json['lastName'] as String? ?? '',
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      photo: json['photo'] as String,
      isAnonymous: json['isAnonymous'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      linkedAccounts: (json['linkedAccounts'] as List<dynamic>?)
              ?.map((e) => $enumDecodeNullable(_$LinkedAccountEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'isAnonymous': instance.isAnonymous,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'linkedAccounts': instance.linkedAccounts
          .map((e) => _$LinkedAccountEnumMap[e])
          .toList(),
    };

const _$LinkedAccountEnumMap = {
  LinkedAccount.google: 'google',
  LinkedAccount.twitter: 'twitter',
  LinkedAccount.facebook: 'facebook',
  LinkedAccount.guest: 'guest',
};
