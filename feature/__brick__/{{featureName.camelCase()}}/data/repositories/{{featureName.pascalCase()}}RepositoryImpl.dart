import '../../../../core/domain/entities/result.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../{{featureName.camelCase()}}.dart';


class {{featureName.pascalCase()}}RepositoryImpl implements {{featureName.pascalCase()}}Repository {
  final {{featureName.pascalCase()}}RemoteDataSource remoteDataSource;

  {{featureName.pascalCase()}}RepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Result<List<ExampleEntity>>> getList() async {
    try {
      final {{featureName.camelCase()}} = await remoteDataSource.getList();
      final {{featureName.camelCase()}}e = {{featureName.camelCase()}}.map((e) => ExampleModel.fromJson(e).toDomain()).toList();
      return Result.success({{featureName.camelCase()}}e);
    } on ServerException {
      return Result.failure(Failure.server());
    }
  }
}