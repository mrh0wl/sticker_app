import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';
part 'failures.g.dart';

@unfreezed
class Failure with _$Failure {
  const factory Failure({required final String message}) = _Failure;

  factory Failure.fromJson(Map<String, Object?> json) =>
      _$FailureFromJson(json);
}
