import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  factory ProfileEvent.initial() = Initial;
  factory ProfileEvent.logOut() = LogOut;
}
