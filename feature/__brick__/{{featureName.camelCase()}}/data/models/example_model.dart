import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../{{featureName.camelCase()}}.dart';

part 'example_model.freezed.dart';
part 'example_model.g.dart';

@freezed
class ExampleModel with _$ExampleModel {
  @HiveType(typeId: 5)
  const factory ExampleModel({
    @HiveField(0) @JsonKey(name: 'id') required String id,
    @HiveField(1) @JsonKey(name: 'name') required String name,
  }) = _ExampleModel;

  factory ExampleModel.fromJson(dynamic json) => _$ExampleModelFromJson(json);

  factory ExampleModel.fromDomain(ExampleEntity entity) {
    return ExampleModel(
      id: entity.id,
      name: entity.name,
    );
  }
}

extension ExampleModelX on ExampleModel {
  ExampleEntity toDomain() {
    return ExampleEntity(
      id: id,
      name: name,
    );
  }
}
