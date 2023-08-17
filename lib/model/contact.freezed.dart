// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({String name, String email, String phone});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String phone});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_$_Contact(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contact implements _Contact {
  const _$_Contact(
      {required this.name, required this.email, required this.phone});

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;

  @override
  String toString() {
    return 'Contact(name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {required final String name,
      required final String email,
      required final String phone}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
