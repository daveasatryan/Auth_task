import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_auth_app/core/data/utilities/bloc/bloc_factory.dart';
import 'package:task_auth_app/core/presentation/utilities/assets/app_assets.dart';
import 'package:task_auth_app/core/presentation/utilities/provider/user_provider.dart';
import 'package:task_auth_app/core/presentation/utilities/routes/app_routes.dart';
import 'package:task_auth_app/core/presentation/utilities/strings/app_strings.dart';
import 'package:task_auth_app/core/presentation/utilities/typography/text_theme.dart';
import 'package:task_auth_app/core/presentation/views/profile_screen/bloc/profile.state.dart';
import 'package:task_auth_app/core/presentation/views/profile_screen/bloc/profile_bloc.dart';
import 'package:task_auth_app/core/presentation/views/profile_screen/bloc/profile_event.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_state.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends BaseState<ProfileScreen> {
  AppStrings get appStrings => AppStrings();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteColor,
      body: BlocProvider(
        create: (context) => context.read<BlocFactory>().create<ProfileBloc>()
          ..add(
            ProfileEvent.initial(),
          ),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) => current.buildWhen(),
          listenWhen: (previous, current) => current.listenWhen(),
          listener: (context, state) {
            state.whenOrNull(
              success: () {},
              loading: () => showLoading(context),
              logout: () {
                context.read<UserProvider>().clearUserData();
                context.read<UserProvider>().user = null;
                AppRoutes.goTo(AppRoutes.signinRoute, hasBack: false);
              },
              error: (msg, code) => showErrorDialog(context, msg: msg),
            );
          },
          builder: (context, state) => state.maybeWhen(
            orElse: () => Container(),
            getProfileData: (user) {
              hideLoading(context);
              return Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: sizes.width * .8,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.profileImage,
                        width: 64,
                        height: 64,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        user.user?.nickname ?? 'Nikname',
                        style: fonts.poppinsBold.copyWith(
                          color: colors.black,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        user.user?.email ?? 'email',
                        style: fonts.poppinsRegular.copyWith(
                          color: colors.whisperColor,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () => context
                              .read<ProfileBloc>()
                              .add(ProfileEvent.logOut()),
                          child: Text(
                            AppStrings.logoutText,
                            style: fonts.poppinsRegular.copyWith(
                              color: colors.redColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
