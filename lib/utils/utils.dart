// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//creating function pickImage
pickImage(ImageSource source) async {
  final ImagePicker _imagepicker = ImagePicker();
  XFile? _file = await _imagepicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No image selected');
}

ShowSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}
