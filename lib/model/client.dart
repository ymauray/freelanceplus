import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required String company,
    required String address,
    required String phone,
    required String email,
    int? id,
    String? contactPersonName,
    String? contactPersonPhone,
    String? contactPersonEmail,
    String? billingAddress,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}
