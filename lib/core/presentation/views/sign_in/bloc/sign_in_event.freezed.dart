// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) validateEmail,
    required TResult Function(String email, String password) validatePassword,
    required TResult Function(String email, String password) validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? validateEmail,
    TResult? Function(String email, String password)? validatePassword,
    TResult? Function(String email, String password)? validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? validateEmail,
    TResult Function(String email, String password)? validatePassword,
    TResult Function(String email, String password)? validate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(Validate value) validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(Validate value)? validate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(Validate value)? validate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateEmailCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$ValidateEmailCopyWith(
          _$ValidateEmail value, $Res Function(_$ValidateEmail) then) =
      __$$ValidateEmailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$ValidateEmailCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ValidateEmail>
    implements _$$ValidateEmailCopyWith<$Res> {
  __$$ValidateEmailCopyWithImpl(
      _$ValidateEmail _value, $Res Function(_$ValidateEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ValidateEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateEmail implements ValidateEmail {
  const _$ValidateEmail(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.validateEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateEmailCopyWith<_$ValidateEmail> get copyWith =>
      __$$ValidateEmailCopyWithImpl<_$ValidateEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) validateEmail,
    required TResult Function(String email, String password) validatePassword,
    required TResult Function(String email, String password) validate,
  }) {
    return validateEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? validateEmail,
    TResult? Function(String email, String password)? validatePassword,
    TResult? Function(String email, String password)? validate,
  }) {
    return validateEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? validateEmail,
    TResult Function(String email, String password)? validatePassword,
    TResult Function(String email, String password)? validate,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(Validate value) validate,
  }) {
    return validateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(Validate value)? validate,
  }) {
    return validateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(Validate value)? validate,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail(this);
    }
    return orElse();
  }
}

abstract class ValidateEmail implements SignInEvent {
  const factory ValidateEmail(final String email, final String password) =
      _$ValidateEmail;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ValidateEmailCopyWith<_$ValidateEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidatePasswordCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$ValidatePasswordCopyWith(
          _$ValidatePassword value, $Res Function(_$ValidatePassword) then) =
      __$$ValidatePasswordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$ValidatePasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ValidatePassword>
    implements _$$ValidatePasswordCopyWith<$Res> {
  __$$ValidatePasswordCopyWithImpl(
      _$ValidatePassword _value, $Res Function(_$ValidatePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ValidatePassword(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidatePassword implements ValidatePassword {
  const _$ValidatePassword(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.validatePassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatePassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidatePasswordCopyWith<_$ValidatePassword> get copyWith =>
      __$$ValidatePasswordCopyWithImpl<_$ValidatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) validateEmail,
    required TResult Function(String email, String password) validatePassword,
    required TResult Function(String email, String password) validate,
  }) {
    return validatePassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? validateEmail,
    TResult? Function(String email, String password)? validatePassword,
    TResult? Function(String email, String password)? validate,
  }) {
    return validatePassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? validateEmail,
    TResult Function(String email, String password)? validatePassword,
    TResult Function(String email, String password)? validate,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(Validate value) validate,
  }) {
    return validatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(Validate value)? validate,
  }) {
    return validatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(Validate value)? validate,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword(this);
    }
    return orElse();
  }
}

abstract class ValidatePassword implements SignInEvent {
  const factory ValidatePassword(final String email, final String password) =
      _$ValidatePassword;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ValidatePasswordCopyWith<_$ValidatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory _$$ValidateCopyWith(
          _$Validate value, $Res Function(_$Validate) then) =
      __$$ValidateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$ValidateCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$Validate>
    implements _$$ValidateCopyWith<$Res> {
  __$$ValidateCopyWithImpl(_$Validate _value, $Res Function(_$Validate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$Validate(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Validate implements Validate {
  const _$Validate(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.validate(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Validate &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateCopyWith<_$Validate> get copyWith =>
      __$$ValidateCopyWithImpl<_$Validate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) validateEmail,
    required TResult Function(String email, String password) validatePassword,
    required TResult Function(String email, String password) validate,
  }) {
    return validate(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? validateEmail,
    TResult? Function(String email, String password)? validatePassword,
    TResult? Function(String email, String password)? validate,
  }) {
    return validate?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? validateEmail,
    TResult Function(String email, String password)? validatePassword,
    TResult Function(String email, String password)? validate,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(Validate value) validate,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(Validate value)? validate,
  }) {
    return validate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(Validate value)? validate,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class Validate implements SignInEvent {
  const factory Validate(final String email, final String password) =
      _$Validate;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ValidateCopyWith<_$Validate> get copyWith =>
      throw _privateConstructorUsedError;
}
