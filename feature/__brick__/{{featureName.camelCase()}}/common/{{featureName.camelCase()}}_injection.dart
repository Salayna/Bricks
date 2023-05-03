part of '../../../di/injection_container.dart';

void _feature{{featureName.pascalCase()}}() {
  sl
   // DataSources
    ..injectDataSource<{{featureName.pascalCase()}}RemoteDataSource>(
      () => {{featureName.pascalCase()}}RemoteDataSourceImpl(dio: dio),
    )

    // Repositories
    ..injectRepository<{{featureName.pascalCase()}}Repository>(
      () => {{featureName.pascalCase()}}RepositoryImpl(
        remoteDataSource: sl(),
      ),
    )
    // UseCases
    ..injectUseCase(() => {{featureName.pascalCase()}}GetListUsecase(sl()));

  // Blocs
  //..injectBloc(() => PlaygroundCubit(playgroundsAround: sl()));

  // Interfaces
}