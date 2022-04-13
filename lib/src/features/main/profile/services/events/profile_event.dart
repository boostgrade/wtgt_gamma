import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserProfile() = ProfileEventGetUserProfile;

  const factory ProfileEvent.signOut() = ProfileEventSignOut;
}
