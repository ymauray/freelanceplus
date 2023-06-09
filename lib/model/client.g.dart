// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Client _$$_ClientFromJson(Map<String, dynamic> json) => _$_Client(
      company: json['company'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      id: json['id'] as int?,
      contactPersonName: json['contactPersonName'] as String?,
      contactPersonPhone: json['contactPersonPhone'] as String?,
      contactPersonEmail: json['contactPersonEmail'] as String?,
      billingAddress: json['billingAddress'] as String?,
    );

Map<String, dynamic> _$$_ClientToJson(_$_Client instance) => <String, dynamic>{
      'company': instance.company,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'id': instance.id,
      'contactPersonName': instance.contactPersonName,
      'contactPersonPhone': instance.contactPersonPhone,
      'contactPersonEmail': instance.contactPersonEmail,
      'billingAddress': instance.billingAddress,
    };
