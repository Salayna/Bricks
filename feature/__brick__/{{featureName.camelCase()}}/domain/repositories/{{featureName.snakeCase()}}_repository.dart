import '../../../../core/domain/entities/result.dart';
import '../../{{featureName.camelCase()}}.dart';

abstract class {{featureName.pascalCase()}}Repository {
  Future<Result<List<ExampleEntity>>> getList();
}