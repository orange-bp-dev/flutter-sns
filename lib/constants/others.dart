import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';

Future<XFile> returnXFile() async {
  final XFile? image =
      await ImagePicker().pickImage(source: ImageSource.gallery);
  return image!;
}

Future<File> returnCroppedFile({required XFile? xFile}) async {
  final instance = ImageCropper();
  final File? result = await instance.cropImage(
      sourcePath: xFile!.path,
      aspectRatioPresets: [CropAspectRatioPreset.square],
      androidUiSettings: AndroidUiSettings(
        toolbarTitle: cropperTitle,
        toolbarColor: Colors.blue,
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.square,
        lockAspectRatio: true,
      ),
      iosUiSettings: IOSUiSettings(
        title: cropperTitle,
      ));
  return result!;
}
