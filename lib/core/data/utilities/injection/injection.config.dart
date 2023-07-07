// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:task_auth_app/core/data/data_sources/auth_data_source.dart'
    as _i4;
import 'package:task_auth_app/core/data/repositories/auth_repository.dart'
    as _i5;
import 'package:task_auth_app/core/data/usecases/auth/sign_in_usecase.dart'
    as _i8;
import 'package:task_auth_app/core/data/utilities/api/api.dart' as _i3;
import 'package:task_auth_app/core/presentation/views/profile_screen/bloc/profile_bloc.dart'
    as _i7;
import 'package:task_auth_app/core/presentation/views/sign_in/bloc/sign_in_bloc.dart'
    as _i10;
import 'package:task_auth_app/core/presentation/views/splash/bloc/splash_bloc.dart'
    as _i9;
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/bloc/bottom_nav_bar_bloc.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.Api>(() => _i3.Api());
    gh.factory<_i4.AuthDataSource>(() => _i4.AuthDataSource(gh<_i3.Api>()));
    gh.factory<_i5.AuthRepository>(
        () => _i5.AuthRepository(gh<_i4.AuthDataSource>()));
    gh.factory<_i6.BottomNavBarBloc>(() => _i6.BottomNavBarBloc());
    gh.factory<_i7.ProfileBloc>(() => _i7.ProfileBloc());
    gh.factory<_i8.SignInUsecase>(
        () => _i8.SignInUsecase(repository: gh<_i5.AuthRepository>()));
    gh.factory<_i9.SplashBloc>(() => _i9.SplashBloc());
    gh.factory<_i10.SignInBloc>(() => _i10.SignInBloc(gh<_i8.SignInUsecase>()));
    return this;
  }
}
