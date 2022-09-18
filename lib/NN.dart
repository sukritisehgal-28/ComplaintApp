import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:io';


late File imageFile;


Widget _decideImageView() {
  if(imageFile == (null)) {
    return Text('No Image Selected!');
  }
  else {
    return Image.file(imageFile,width: 100,height: 200);
  }
}
