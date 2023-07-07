// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel? userModel) success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)
        validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel? userModel)? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel? userModel)? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateValidationEmailPassword value)
        validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateValidationEmailPassword value)? validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateValidationEmailPassword value)? validation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$SignInStateLoadingCopyWith<$Res> {
  factory _$$_$SignInStateLoadingCopyWith(_$_$SignInStateLoading value,
          $Res Function(_$_$SignInStateLoading) then) =
      __$$_$SignInStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$SignInStateLoadingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_$SignInStateLoading>
    implements _$$_$SignInStateLoadingCopyWith<$Res> {
  __$$_$SignInStateLoadingCopyWithImpl(_$_$SignInStateLoading _value,
      $Res Function(_$_$SignInStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$SignInStateLoading implements _$SignInStateLoading {
  const _$_$SignInStateLoading();

  @override
  String toString() {
    return 'SignInState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$SignInStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel? userModel) success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)
        validation,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel? userModel)? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel? userModel)? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateValidationEmailPassword value)
        validation,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateValidationEmailPassword value)? validation,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateValidationEmailPassword value)? validation,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$SignInStateLoading implements SignInState {
  const factory _$SignInStateLoading() = _$_$SignInStateLoading;
}

/// @nodoc
abstract class _$$_$SignInStateSuccessCopyWith<$Res> {
  factory _$$_$SignInStateSuccessCopyWith(_$_$SignInStateSuccess value,
          $Res Function(_$_$SignInStateSuccess) then) =
      __$$_$SignInStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? userModel});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$_$SignInStateSuccessCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_$SignInStateSuccess>
    implements _$$_$SignInStateSuccessCopyWith<$Res> {
  __$$_$SignInStateSuccessCopyWithImpl(_$_$SignInStateSuccess _value,
      $Res Function(_$_$SignInStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_$_$SignInStateSuccess(
      freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$_$SignInStateSuccess implements _$SignInStateSuccess {
  _$_$SignInStateSuccess(this.userModel);

  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'SignInState.success(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$SignInStateSuccess &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$SignInStateSuccessCopyWith<_$_$SignInStateSuccess> get copyWith =>
      __$$_$SignInStateSuccessCopyWithImpl<_$_$SignInStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel? userModel) success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)
        validation,
  }) {
    return success(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel? userModel)? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
  }) {
    return success?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel? userModel)? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateValidationEmailPassword value)
        validation,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateValidationEmailPassword value)? validation,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateValidationEmailPassword value)? validation,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$SignInStateSuccess implements SignInState {
  factory _$SignInStateSuccess(final UserModel? userModel) =
      _$_$SignInStateSuccess;

  UserModel? get userModel;
  @JsonKey(ignore: true)
  _$$_$SignInStateSuccessCopyWith<_$_$SignInStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$SignInStateErrorCopyWith<$Res> {
  factory _$$_$SignInStateErrorCopyWith(_$_$SignInStateError value,
          $Res Function(_$_$SignInStateError) then) =
      __$$_$SignInStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_$SignInStateErrorCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_$SignInStateError>
    implements _$$_$SignInStateErrorCopyWith<$Res> {
  __$$_$SignInStateErrorCopyWithImpl(
      _$_$SignInStateError _value, $Res Function(_$_$SignInStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_$SignInStateError(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$SignInStateError implements _$SignInStateError {
  const _$_$SignInStateError({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'SignInState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$SignInStateError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$SignInStateErrorCopyWith<_$_$SignInStateError> get copyWith =>
      __$$_$SignInStateErrorCopyWithImpl<_$_$SignInStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel? userModel) success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)
        validation,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel? userModel)? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel? userModel)? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateValidationEmailPassword value)
        validation,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateValidationEmailPassword value)? validation,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateValidationEmailPassword value)? validation,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$SignInStateError implements SignInState {
  const factory _$SignInStateError({required final String msg}) =
      _$_$SignInStateError;

  String get msg;
  @JsonKey(ignore: true)
  _$$_$SignInStateErrorCopyWith<_$_$SignInStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$SignInStateValidationEmailPasswordCopyWith<$Res> {
  factory _$$_$SignInStateValidationEmailPasswordCopyWith(
          _$_$SignInStateValidationEmailPassword value,
          $Res Function(_$_$SignInStateValidationEmailPassword) then) =
      __$$_$SignInStateValidationEmailPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ValidationEnum email,
      ValidationEnum password,
      ButtonValidation signInButton,
      String? errorText});
}

/// @nodoc
class __$$_$SignInStateValidationEmailPasswordCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res,
        _$_$SignInStateValidationEmailPassword>
    implements _$$_$SignInStateValidationEmailPasswordCopyWith<$Res> {
  __$$_$SignInStateValidationEmailPasswordCopyWithImpl(
      _$_$SignInStateValidationEmailPassword _value,
      $Res Function(_$_$SignInStateValidationEmailPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? signInButton = null,
    Object? errorText = freezed,
  }) {
    return _then(_$_$SignInStateValidationEmailPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as ValidationEnum,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as ValidationEnum,
      signInButton: null == signInButton
          ? _value.signInButton
          : signInButton // ignore: cast_nullable_to_non_nullable
              as ButtonValidation,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_$SignInStateValidationEmailPassword
    implements _$SignInStateValidationEmailPassword {
  const _$_$SignInStateValidationEmailPassword(
      {required this.email,
      required this.password,
      required this.signInButton,
      this.errorText});

  @override
  final ValidationEnum email;
  @override
  final ValidationEnum password;
  @override
  final ButtonValidation signInButton;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'SignInState.validation(email: $email, password: $password, signInButton: $signInButton, errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$SignInStateValidationEmailPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.signInButton, signInButton) ||
                other.signInButton == signInButton) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, signInButton, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$SignInStateValidationEmailPasswordCopyWith<
          _$_$SignInStateValidationEmailPassword>
      get copyWith => __$$_$SignInStateValidationEmailPasswordCopyWithImpl<
          _$_$SignInStateValidationEmailPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel? userModel) success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)
        validation,
  }) {
    return validation(email, password, signInButton, errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel? userModel)? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
  }) {
    return validation?.call(email, password, signInButton, errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel? userModel)? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password,
            ButtonValidation signInButton, String? errorText)?
        validation,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(email, password, signInButton, errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateValidationEmailPassword value)
        validation,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateValidationEmailPassword value)? validation,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateValidationEmailPassword value)? validation,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class _$SignInStateValidationEmailPassword implements SignInState {
  const factory _$SignInStateValidationEmailPassword(
      {required final ValidationEnum email,
      required final ValidationEnum password,
      required final ButtonValidation signInButton,
      final String? errorText}) = _$_$SignInStateValidationEmailPassword;

  ValidationEnum get email;
  ValidationEnum get password;
  ButtonValidation get signInButton;
  String? get errorText;
  @JsonKey(ignore: true)
  _$$_$SignInStateValidationEmailPasswordCopyWith<
          _$_$SignInStateValidationEmailPassword>
      get copyWith => throw _privateConstructorUsedError;
}
