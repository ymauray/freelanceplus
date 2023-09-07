// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactPerson _$$_ContactPersonFromJson(Map<String, dynamic> json) =>
    _$_ContactPerson(
      id: json['id'] as int,
      clientId: json['clientId'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      role: json['role'] as String?,
      projectIds:
          (json['projectIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_ContactPersonToJson(_$_ContactPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientId': instance.clientId,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
      'projectIds': instance.projectIds,
    };
