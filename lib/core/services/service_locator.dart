import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:natker_app/core/features/auth/data/datasources/auth_firestore_remote_datasource.dart';
import 'package:natker_app/core/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:natker_app/core/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:natker_app/core/features/auth/domain/entities/user_entity.dart';
import 'package:natker_app/core/features/auth/domain/repositories/auth_repository.dart';
import 'package:natker_app/core/features/auth/domain/usecases/log_in_usecase.dart';
import 'package:natker_app/core/features/auth/domain/usecases/log_out_usecase.dart';
import 'package:natker_app/core/features/auth/domain/usecases/stream_auth_usecase.dart';
import 'package:natker_app/core/features/auth/infrastructure/datasources/auth_firestore_remote_datasource_impl.dart';
import 'package:natker_app/core/features/auth/infrastructure/datasources/auth_local_datasource_impl.dart';
import 'package:natker_app/core/features/auth/infrastructure/datasources/auth_remote_datasource_impl.dart';
import 'package:natker_app/core/features/auth/infrastructure/repositories/auth_repository_impl.dart';
import 'package:natker_app/core/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:natker_app/core/features/auth/presentation/bloc/cubit/login_cubit.dart';
import 'package:natker_app/onboarding/data/datasources/onboarding_completed_local_datasource.dart';
import 'package:natker_app/onboarding/domain/usecases/onboarding_completed_usecases.dart';
import 'package:natker_app/onboarding/infrastructure/datasources/onboarding_completed_local_datasource_impl.dart';
import 'package:natker_app/onboarding/presentation/bloc/onboarding_completed_bloc.dart';

final locator = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    Hive.registerAdapter(UserImplAdapter());
    // Data Sources
    locator.registerLazySingleton<OnboardingLocalDataSource>(
      () => OnboardingLocalDataSourceImpl(),
    );
    locator.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(),
    );
    await AuthLocalDataSourceImpl.init();
    locator.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(),
    );
    locator.registerLazySingleton<AuthFirestoreRemoteDataSource>(
      () => AuthFirestoreRemoteDataSourceImpl(),
    );

    // Use Cases
    locator.registerLazySingleton(
      () => CheckOnboardingStatusUseCase(locator()),
    );
    locator.registerLazySingleton(
      () => CompleteOnboardingUseCase(locator()),
    );
    locator.registerLazySingleton(
      () => StreamAuthUseCase(locator()),
    );
    locator.registerLazySingleton(
      () => LogInUseCase(locator()),
    );
    locator.registerLazySingleton(
      () => LogOutUseCase(locator()),
    );

    // Repositories
    locator.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteDataSource: locator(),
        localDataSource: locator(),
        firestoreRemoteDataSource: locator(),
      ),
    );

    // BloC
    locator.registerFactory(
      () => OnboardingCompletedBloc(
        checkStatus: locator(),
        complete: locator(),
      ),
    );
    locator.registerFactory(
      () => AuthBloc(
        repo: locator(),
      ),
    );

    // Cubit
    locator.registerFactory(
      () => LoginCubit(
        locator(),
      ),
    );
  }
}
