import '../../../../core/constants/api_constants.dart';
import '../../../../core/data/datasources/remote_data_source.dart';
import '../../{{featureName.camelCase()}}.dart';

abstract class {{featureName.pascalCase()}}RemoteDataSource {
  Future<dynamic> getList();
}

class {{featureName.pascalCase()}}RemoteDataSourceImpl extends RemoteDataSource implements {{featureName.pascalCase()}}RemoteDataSource {

  {{featureName.pascalCase()}}RemoteDataSourceImpl({required super.dio});

  @override
  Future<ExampleModel> getList() async {
    return performGetRequestApi(
      apiEndpoint: 'YOUR_API_ENDPOINT',
    );
  }
}
