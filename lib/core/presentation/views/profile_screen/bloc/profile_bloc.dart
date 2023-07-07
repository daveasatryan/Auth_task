import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';
import 'package:task_auth_app/core/data/utilities/storage/preferences_manager.dart';
import 'package:task_auth_app/core/presentation/views/profile_screen/bloc/profile.state.dart';
import 'package:task_auth_app/core/presentation/views/profile_screen/bloc/profile_event.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.loading()) {
    on<Initial>(
      (event, emit) => emit(
        ProfileState.getProfileData(
          userModel: PreferencesManager.user ?? const UserModel(),
        ),
      ),
    );
    on<LogOut>(
      (event, emit) => emit(const ProfileState.logout()),
    );
  }
}
