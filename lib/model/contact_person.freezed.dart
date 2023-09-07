// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactPerson _$ContactPersonFromJson(Map<String, dynamic> json) {
  return _ContactPerson.fromJson(json);
}

/// @nodoc
mixin _$ContactPerson {
  int get id => throw _privateConstructorUsedError;
  int get clientId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  List<int>? get projectIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactPersonCopyWith<ContactPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactPersonCopyWith<$Res> {
  factory $ContactPersonCopyWith(
          ContactPerson value, $Res Function(ContactPerson) then) =
      _$ContactPersonCopyWithImpl<$Res, ContactPerson>;
  @useResult
  $Res call(
      {int id,
      int clientId,
      String name,
      String email,
      String? phoneNumber,
      String? role,
      List<int>? projectIds});
}

/// @nodoc
class _$ContactPersonCopyWithImpl<$Res, $Val extends ContactPerson>
    implements $ContactPersonCopyWith<$Res> {
  _$ContactPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? role = freezed,
    Object? projectIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      projectIds: freezed == projectIds
          ? _value.projectIds
          : projectIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactPersonCopyWith<$Res>
    implements $ContactPersonCopyWith<$Res> {
  factory _$$_ContactPersonCopyWith(
          _$_ContactPerson value, $Res Function(_$_ContactPerson) then) =
      __$$_ContactPersonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int clientId,
      String name,
      String email,
      String? phoneNumber,
      String? role,
      List<int>? projectIds});
}

/// @nodoc
class __$$_ContactPersonCopyWithImpl<$Res>
    extends _$ContactPersonCopyWithImpl<$Res, _$_ContactPerson>
    implements _$$_ContactPersonCopyWith<$Res> {
  __$$_ContactPersonCopyWithImpl(
      _$_ContactPerson _value, $Res Function(_$_ContactPerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? role = freezed,
    Object? projectIds = freezed,
  }) {
    return _then(_$_ContactPerson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      projectIds: freezed == projectIds
          ? _value._projectIds
          : projectIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactPerson implements _ContactPerson {
  const _$_ContactPerson(
      {required this.id,
      required this.clientId,
      required this.name,
      required this.email,
      this.phoneNumber,
      this.role,
      final List<int>? projectIds})
      : _projectIds = projectIds;

  factory _$_ContactPerson.fromJson(Map<String, dynamic> json) =>
      _$$_ContactPersonFromJson(json);

  @override
  final int id;
  @override
  final int clientId;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? phoneNumber;
  @override
  final String? role;
  final List<int>? _projectIds;
  @override
  List<int>? get projectIds {
    final value = _projectIds;
    if (value == null) return null;
    if (_projectIds is EqualUnmodifiableListView) return _projectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContactPerson(id: $id, clientId: $clientId, name: $name, email: $email, phoneNumber: $phoneNumber, role: $role, projectIds: $projectIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactPerson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._projectIds, _projectIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, clientId, name, email,
      phoneNumber, role, const DeepCollectionEquality().hash(_projectIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactPersonCopyWith<_$_ContactPerson> get copyWith =>
      __$$_ContactPersonCopyWithImpl<_$_ContactPerson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactPersonToJson(
      this,
    );
  }
}

abstract class _ContactPerson implements ContactPerson {
  const factory _ContactPerson(
      {required final int id,
      required final int clientId,
      required final String name,
      required final String email,
      final String? phoneNumber,
      final String? role,
      final List<int>? projectIds}) = _$_ContactPerson;

  factory _ContactPerson.fromJson(Map<String, dynamic> json) =
      _$_ContactPerson.fromJson;

  @override
  int get id;
  @override
  int get clientId;
  @override
  String get name;
  @override
  String get email;
  @override
  String? get phoneNumber;
  @override
  String? get role;
  @override
  List<int>? get projectIds;
  @override
  @JsonKey(ignore: true)
  _$$_ContactPersonCopyWith<_$_ContactPerson> get copyWith =>
      throw _privateConstructorUsedError;
}
