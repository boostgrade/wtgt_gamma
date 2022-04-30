import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserProfile() = ProfileEventGetUserProfile;

  const factory ProfileEvent.signOut() = ProfileEventSignOut;

  const factory ProfileEvent.updateAvatarFromGallery() = ProfileEventUpdateAvatarFromGallery;

  const factory ProfileEvent.updateAvatarFromCamera() = ProfileEventUpdateAvatarFromCamera;

  const factory ProfileEvent.profileUpdate() = ProfileEventProfileUpdate;

  const factory ProfileEvent.settingsUpdate() = ProfileEventSettingsUpdate;
}
