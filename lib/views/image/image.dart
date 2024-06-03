import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../consts/colors.dart'; // Ensure this path is correct

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_image != null)
              CircleAvatar(
                radius: 100,
                backgroundImage: FileImage(_image!),
              )
            else
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey.shade200,
                child: IconButton(
                  icon: Icon(Icons.add_photo_alternate, size: 50),
                  onPressed: _pickImage,
                ),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: const Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
