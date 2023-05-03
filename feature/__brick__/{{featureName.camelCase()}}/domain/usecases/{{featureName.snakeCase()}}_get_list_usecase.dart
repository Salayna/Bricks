import '../../../../core/domain/entities/result.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../{{featureName.camelCase()}}.dart';

class {{featureName.pascalCase()}}GetListUsecase
    implements
        UseCase<List<ExampleEntity>,  {{featureName.pascalCase()}}UsecaseParams> {
  final  {{featureName.pascalCase()}}Repository _{{featureName.camelCase()}}Repository;

  {{featureName.pascalCase()}}GetListUsecase(this._{{featureName.camelCase()}}Repository);


  @override
  Future<Result<List<ExampleEntity>>> call(
      {{featureName.pascalCase()}}UsecaseParams params) async {
    final result = _{{featureName.camelCase()}}Repository.getList();
    return result;
  }

}

class {{featureName.pascalCase()}}UsecaseParams {
  {{featureName.pascalCase()}}UsecaseParams();
}
