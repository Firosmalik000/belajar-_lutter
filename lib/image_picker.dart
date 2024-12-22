import 'package:flutter/material.dart';

class ImagePickerTest extends StatefulWidget {
  const ImagePickerTest({super.key});

  @override
  State<ImagePickerTest> createState() => _ImagePickerTestState();
}

class _ImagePickerTestState extends State<ImagePickerTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Image Picker',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => {},
            // onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return const HomePage();
            //   }));
            // },
          ),
        ],
      ),
      body: const Center(
        child: Text('Image Picker'),
      ),
    );
  }
}
