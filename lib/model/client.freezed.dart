// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
mixin _$Client {
  String get company => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get contactPersonName => throw _privateConstructorUsedError;
  String? get contactPersonPhone => throw _privateConstructorUsedError;
  String? get contactPersonEmail => throw _privateConstructorUsedError;
  String? get billingAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
  @useResult
  $Res call(
      {String company,
      String address,
      String phone,
      String email,
      int? id,
      String? contactPersonName,
      String? contactPersonPhone,
      String? contactPersonEmail,
      String? billingAddress});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? address = null,
    Object? phone = null,
    Object? email = null,
    Object? id = freezed,
    Object? contactPersonName = freezed,
    Object? contactPersonPhone = freezed,
    Object? contactPersonEmail = freezed,
    Object? billingAddress = freezed,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      contactPersonName: freezed == contactPersonName
          ? _value.contactPersonName
          : contactPersonName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPersonPhone: freezed == contactPersonPhone
          ? _value.contactPersonPhone
          : contactPersonPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPersonEmail: freezed == contactPersonEmail
          ? _value.contactPersonEmail
          : contactPersonEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$_ClientCopyWith(_$_Client value, $Res Function(_$_Client) then) =
      __$$_ClientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String company,
      String address,
      String phone,
      String email,
      int? id,
      String? contactPersonName,
      String? contactPersonPhone,
      String? contactPersonEmail,
      String? billingAddress});
}

/// @nodoc
class __$$_ClientCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$_Client>
    implements _$$_ClientCopyWith<$Res> {
  __$$_ClientCopyWithImpl(_$_Client _value, $Res Function(_$_Client) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? address = null,
    Object? phone = null,
    Object? email = null,
    Object? id = freezed,
    Object? contactPersonName = freezed,
    Object? contactPersonPhone = freezed,
    Object? contactPersonEmail = freezed,
    Object? billingAddress = freezed,
  }) {
    return _then(_$_Client(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      contactPersonName: freezed == contactPersonName
          ? _value.contactPersonName
          : contactPersonName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPersonPhone: freezed == contactPersonPhone
          ? _value.contactPersonPhone
          : contactPersonPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPersonEmail: freezed == contactPersonEmail
          ? _value.contactPersonEmail
          : contactPersonEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Client implements _Client {
  const _$_Client(
      {required this.company,
      required this.address,
      required this.phone,
      required this.email,
      this.id,
      this.contactPersonName,
      this.contactPersonPhone,
      this.contactPersonEmail,
      this.billingAddress});

  factory _$_Client.fromJson(Map<String, dynamic> json) =>
      _$$_ClientFromJson(json);

  @override
  final String company;
  @override
  final String address;
  @override
  final String phone;
  @override
  final String email;
  @override
  final int? id;
  @override
  final String? contactPersonName;
  @override
  final String? contactPersonPhone;
  @override
  final String? contactPersonEmail;
  @override
  final String? billingAddress;

  @override
  String toString() {
    return 'Client(company: $company, address: $address, phone: $phone, email: $email, id: $id, contactPersonName: $contactPersonName, contactPersonPhone: $contactPersonPhone, contactPersonEmail: $contactPersonEmail, billingAddress: $billingAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Client &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contactPersonName, contactPersonName) ||
                other.contactPersonName == contactPersonName) &&
            (identical(other.contactPersonPhone, contactPersonPhone) ||
                other.contactPersonPhone == contactPersonPhone) &&
            (identical(other.contactPersonEmail, contactPersonEmail) ||
                other.contactPersonEmail == contactPersonEmail) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      company,
      address,
      phone,
      email,
      id,
      contactPersonName,
      contactPersonPhone,
      contactPersonEmail,
      billingAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      __$$_ClientCopyWithImpl<_$_Client>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientToJson(
      this,
    );
  }
}

abstract class _Client implements Client {
  const factory _Client(
      {required final String company,
      required final String address,
      required final String phone,
      required final String email,
      final int? id,
      final String? contactPersonName,
      final String? contactPersonPhone,
      final String? contactPersonEmail,
      final String? billingAddress}) = _$_Client;

  factory _Client.fromJson(Map<String, dynamic> json) = _$_Client.fromJson;

  @override
  String get company;
  @override
  String get address;
  @override
  String get phone;
  @override
  String get email;
  @override
  int? get id;
  @override
  String? get contactPersonName;
  @override
  String? get contactPersonPhone;
  @override
  String? get contactPersonEmail;
  @override
  String? get billingAddress;
  @override
  @JsonKey(ignore: true)
  _$$_ClientCopyWith<_$_Client> get copyWith =>
      throw _privateConstructorUsedError;
}
