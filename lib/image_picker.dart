import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker({Key? key}) : super(key: key);

  @override
  State<MyImagePicker> createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  XFile? selectedImage;
  ImagePicker imagePicker = ImagePicker();

  getImageFromCamera() async {
    XFile? myFile = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      selectedImage = myFile;
    });
    Navigator.pop(context);
  }

  getImageFromGallery() async {
    XFile? myFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      selectedImage = myFile;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    showOption() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      getImageFromCamera();
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.camera_alt_rounded, size: 50),
                        Text(
                          'Camera',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(height: 5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      getImageFromGallery();
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.image, size: 50),
                        Text(
                          'Gallery',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          });
    }

    return SizedBox(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                showOption();
              },
              child: const Text('Show Option')),
        ),
        body: Center(
          child: selectedImage != null
              ? Image.file(File(selectedImage!.path))
              : const Text('Select File'),
        ),
      ),
    );
  }
}
