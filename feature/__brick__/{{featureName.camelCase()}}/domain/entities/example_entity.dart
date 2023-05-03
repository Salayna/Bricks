import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_entity.freezed.dart';

@freezed
class ExampleEntity with _$ExampleEntity {
  const factory ExampleEntity({
    required String id,
    required String name,
  }) = _ExampleEntity;
}
