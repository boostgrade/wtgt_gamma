import 'package:image_picker/image_picker.dart';

class AvatarPicker {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> pickFromGallery() {
    return _picker.pickImage(source: ImageSource.gallery);
  }

  Future<XFile?> pickFromCamera() {
    return _picker.pickImage(source: ImageSource.camera);
  }
}
