import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:task_auth_app/core/presentation/views/splash/bloc/splash_event.dart';
import 'package:task_auth_app/core/presentation/views/splash/bloc/splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<GetUser>(
      (event, emit) => emit(const SplashState.success()),
    );
  }
}
