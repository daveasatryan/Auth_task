import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_auth_app/core/data/utilities/bloc/bloc_factory.dart';
import 'package:task_auth_app/core/presentation/utilities/provider/user_provider.dart';
import 'package:task_auth_app/core/presentation/utilities/routes/app_routes.dart';
import 'package:task_auth_app/core/presentation/utilities/strings/app_strings.dart';
import 'package:task_auth_app/core/presentation/utilities/typography/text_theme.dart';
import 'package:task_auth_app/core/presentation/views/sign_in/bloc/sign_in_bloc.dart';
import 'package:task_auth_app/core/presentation/views/sign_in/bloc/sign_in_event.dart';
import 'package:task_auth_app/core/presentation/views/sign_in/bloc/sign_in_state.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_app_bar/base_app_bar_widget.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_state.dart';
import 'package:task_auth_app/core/presentation/widgets/custom_widgets/custom_button.dart';
import 'package:task_auth_app/core/presentation/widgets/custom_widgets/custom_text_filed.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends BaseState<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool hidePassword = true;
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteColor,
      appBar: BaseAppBarWidget(
        title: AppStrings.authText,
      ),
      body: BlocProvider(
        create: (context) => context.read<BlocFactory>().create<SignInBloc>(),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: sizes.width * .9),
            child: BlocConsumer<SignInBloc, SignInState>(
              buildWhen: (previous, current) => current.buildWhen(),
              listenWhen: (previous, current) => current.listenWhen(),
              listener: (context, state) {
                state.whenOrNull(
                  success: (user) {
                    context.read<UserProvider>().user = user;
                    Navigator.pop(context);
                    AppRoutes.goTo(AppRoutes.dashboardRoute, hasBack: false);
                  },
                  loading: () => showLoading(context),
                  error: (msg) => showErrorDialog(context, msg: msg),
                );
              },
              builder: (context, state) => state.maybeWhen(
                orElse: () => Container(),
                validation: (email, password, signin, errorText) {
                  hideLoading(context);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextField(
                        onChanged: (value) {
                          if (_debounce?.isActive == true) _debounce?.cancel();
                          _debounce = Timer(
                            const Duration(milliseconds: 600),
                            () {
                              context.read<SignInBloc>().add(
                                    SignInEvent.validateEmail(
                                        value, passwordController.text),
                                  );
                            },
                          );
                        },
                        errorText: email.errorMessageEmail,
                        controller: emailController,
                        style: fonts.poppinsRegular.copyWith(fontSize: 16),
                        hint: AppStrings.loginHintText,
                        fillColor: colors.whiteColor,
                        hintStyle: fonts.poppinsRegular.copyWith(
                          color: colors.whisperColor,
                          fontSize: 16,
                        ),
                        showBorders: false,
                      ),
                      Container(
                        color: colors.whisperColor,
                        width: sizes.width * .9,
                        height: 0.5,
                      ),
                      CustomTextField(
                        showBorders: false,
                        togglePasswordVisibility: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        hintStyle: fonts.poppinsRegular.copyWith(
                          color: colors.whisperColor,
                          fontSize: 16,
                        ),
                        errorText: password.errorMassagePassword,
                        onChanged: (value) {
                          if (_debounce?.isActive == true) _debounce?.cancel();
                          _debounce = Timer(
                            const Duration(milliseconds: 600),
                            () {
                              context.read<SignInBloc>().add(
                                    SignInEvent.validatePassword(
                                        emailController.text, value),
                                  );
                            },
                          );
                        },
                        isPasswordField: true,
                        hidePassword: hidePassword,
                        controller: passwordController,
                        style: fonts.poppinsRegular.copyWith(fontSize: 16),
                        hint: AppStrings.passwordText,
                        fillColor: colors.whiteColor,
                      ),
                      const SizedBox(height: 20),
                      ConstrainedBox(
                        constraints: BoxConstraints(minWidth: sizes.width * 9),
                        child: CustomButton(
                          color: colors.blueColor,
                          isColorFilled: false,
                          onTap: () {
                            hideKeyboard();
                            context.read<SignInBloc>().add(
                                  SignInEvent.validate(
                                    emailController.text,
                                    passwordController.text,
                                  ),
                                );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              AppStrings.loginText,
                              textAlign: TextAlign.center,
                              style: fonts.poppinsMedium
                                  .copyWith(color: colors.whiteColor),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      ConstrainedBox(
                        constraints: BoxConstraints(minWidth: sizes.width * 9),
                        child: CustomButton(
                          color: colors.blueColor,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 10,
                          ),
                          isColorFilled: false,
                          onTap: () => null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              AppStrings.registerText,
                              textAlign: TextAlign.center,
                              style: fonts.poppinsMedium
                                  .copyWith(color: colors.whiteColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
